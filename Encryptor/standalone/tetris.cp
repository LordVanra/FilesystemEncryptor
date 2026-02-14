#include <SFML/Graphics.hpp>
#include <SFML/Window.hpp>
#include <array>
#include <vector>
#include <random>
#include <optional>

const int BOARD_WIDTH = 10;
const int BOARD_HEIGHT = 20;
const int TILE_SIZE = 30;

struct Tetromino {
    std::vector<sf::Vector2i> blocks;
    sf::Color color;
};

const std::array<std::array<sf::Vector2i,4>,7> SHAPES {{
    {{ {0,0},{1,0},{-1,0},{-2,0} }},
    {{ {0,0},{0,-1},{1,0},{1,-1} }},
    {{ {0,0},{-1,0},{0,-1},{1,-1} }},
    {{ {0,0},{1,0},{0,-1},{-1,-1} }},
    {{ {0,0},{-1,0},{1,0},{0,-1} }},
    {{ {0,0},{-1,0},{-1,-1},{0,-1} }},
    {{ {0,0},{1,0},{1,-1},{0,-1} }}
}};

const std::array<sf::Color,7> COLORS {{
    sf::Color::Cyan, sf::Color::Yellow, sf::Color::Green,
    sf::Color::Red, sf::Color::Magenta, sf::Color::Blue,
    sf::Color(255,140,0)
}};

struct Game {
    std::array<std::array<int,BOARD_WIDTH>,BOARD_HEIGHT> board{};
    Tetromino current;
    sf::Vector2i position;
    std::mt19937 rng{std::random_device{}()};
    bool gameOver = false;
    sf::Font font;

    Game() { 
        spawnTetromino(); 
    }

    bool spawnTetromino() {
        std::uniform_int_distribution<int> dist(0, SHAPES.size()-1);
        int index = dist(rng);
        current.blocks.assign(SHAPES[index].begin(), SHAPES[index].end());
        current.color = COLORS[index];
        position = {BOARD_WIDTH/2,1};
        
        // Check if the new piece can be placed
        if (checkCollision({0,0}, current.blocks)) {
            gameOver = true;
            return false;
        }
        return true;
    }

    bool checkCollision(sf::Vector2i delta, const std::vector<sf::Vector2i>& blocks) {
        for (auto &b : blocks) {
            int x = position.x + b.x + delta.x;
            int y = position.y + b.y + delta.y;
            if (x<0 || x>=BOARD_WIDTH || y>=BOARD_HEIGHT) return true;
            if (y>=0 && board[y][x]) return true;
        }
        return false;
    }

    void rotateTetromino() {
        if (gameOver) return;
        
        std::vector<sf::Vector2i> rotated;
        for (auto &b : current.blocks)
            rotated.push_back({-b.y, b.x});
        if (!checkCollision({0,0}, rotated))
            current.blocks = rotated;
    }

    void fixTetromino() {
        for (auto &b : current.blocks) {
            int x = position.x + b.x;
            int y = position.y + b.y;
            if (y>=0) board[y][x] = 1;
        }
        clearLines();
        spawnTetromino();
    }

    void clearLines() {
        for (int y=0; y<BOARD_HEIGHT; ++y) {
            bool full = true;
            for (int x=0; x<BOARD_WIDTH; ++x)
                if (!board[y][x]) full=false;
            if (full) {
                for (int row=y; row>0; --row)
                    board[row] = board[row-1];
                board[0].fill(0);
            }
        }
    }

    void move(sf::Vector2i delta) {
        if (gameOver) return;
        
        if (!checkCollision(delta, current.blocks))
            position += delta;
        else if (delta.y==1)
            fixTetromino();
    }

    void restart() {
        gameOver = false;
        for (auto& row : board) {
            row.fill(0);
        }
        spawnTetromino();
    }

    void draw(sf::RenderWindow &window) {
        sf::RectangleShape rect(sf::Vector2f(TILE_SIZE-2.f,TILE_SIZE-2.f));
        
        // Draw board
        for (int y=0;y<BOARD_HEIGHT;++y)
            for (int x=0;x<BOARD_WIDTH;++x)
                if (board[y][x]) {
                    rect.setPosition(sf::Vector2f(float(x*TILE_SIZE),float(y*TILE_SIZE)));
                    rect.setFillColor(sf::Color::White);
                    window.draw(rect);
                }
        
        // Draw current tetromino (only if game is not over)
        if (!gameOver) {
            rect.setFillColor(current.color);
            for (auto &b : current.blocks) {
                int x = position.x+b.x;
                int y = position.y+b.y;
                if (y>=0) {
                    rect.setPosition(sf::Vector2f(float(x*TILE_SIZE),float(y*TILE_SIZE)));
                    window.draw(rect);
                }
            }
        }
        
        // Draw game over screen
        if (gameOver) {
            // Semi-transparent overlay
            sf::RectangleShape overlay(sf::Vector2f(BOARD_WIDTH * TILE_SIZE, BOARD_HEIGHT * TILE_SIZE));
            overlay.setFillColor(sf::Color(0, 0, 0, 180));
            window.draw(overlay);
            
            // Game over text - font first, then string, then size
            sf::Text gameOverText(font, "GAME OVER", 36);
            gameOverText.setFillColor(sf::Color::Red);
            gameOverText.setPosition(sf::Vector2f(BOARD_WIDTH * TILE_SIZE / 2 - 100, BOARD_HEIGHT * TILE_SIZE / 2 - 50));
            window.draw(gameOverText);
            
            // Restart instruction - font first, then string, then size
            sf::Text restartText(font, "Press R to Restart", 20);
            restartText.setFillColor(sf::Color::White);
            restartText.setPosition(sf::Vector2f(BOARD_WIDTH * TILE_SIZE / 2 - 80, BOARD_HEIGHT * TILE_SIZE / 2 + 20));
            window.draw(restartText);
        }
    }
};

int main() {
    sf::RenderWindow window(sf::VideoMode(sf::Vector2u(BOARD_WIDTH * TILE_SIZE, BOARD_HEIGHT * TILE_SIZE)), "Tetris.exe");
    window.setFramerateLimit(60);

    Game game;
    sf::Clock clock;
    float dropInterval = 0.5f;
    float timer = 0.f;

    while (window.isOpen())
    {
        // check all the window's events that were triggered since the last iteration of the loop
        while (const std::optional event = window.pollEvent())
        {
            if (event->is<sf::Event::Closed>() ) {
                window.close();
            } 
            if (event->is<sf::Event::KeyPressed>() ) {
                switch (event->getIf<sf::Event::KeyPressed>()->code) {
                    case sf::Keyboard::Key::Left:
                        game.move({-1, 0});
                        break;
                    case sf::Keyboard::Key::Right:
                        game.move({1, 0});
                        break;
                    case sf::Keyboard::Key::Down:
                        game.move({0, 1});
                        break;
                    case sf::Keyboard::Key::Up:
                        game.rotateTetromino();
                        break;
                    case sf::Keyboard::Key::R:
                        if (game.gameOver) {
                            game.restart();
                        }
                        break;
                    default:
                        break;
                }
            }
        }

        // Update game timer (only if game is not over)
        if (!game.gameOver) {
            float dt = clock.restart().asSeconds();
            timer += dt;
            if (timer >= dropInterval) {
                game.move({0, 1});
                timer = 0.f;
            }
        } else {
            clock.restart(); // Keep clock running even when game is over
            sf::sleep(sf::seconds(6));

            // Close window
            window.close();

            return 0;
        }

        // Draw everything
        window.clear(sf::Color::Black);
        game.draw(window);
        window.display();
    }

    return 0;
}
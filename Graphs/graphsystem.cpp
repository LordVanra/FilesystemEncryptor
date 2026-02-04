#include <iostream>
#include <vector>
#include <algorithm>
#include <thread>
#include <chrono>

int combination(int n, int k)
{
    if (k > n - k)
        k = n - k; // Take advantage of symmetry
    int result = 1;
    for (int i = 0; i < k; ++i)
    {
        result *= (n - i);
        result /= (i + 1);
    }
    return result;
}

class Node
{
public:
    int id;
    std::vector<Node> receivers;

    Node(int id) : id(id) {}
    Node() : id(-1) {}

    void addDualConnection(Node &connection)
    {
        if (std::find(receivers.begin(), receivers.end(), connection) == receivers.end())
            (receivers.push_back(connection));
        connection.addSingleConnection(*this);
    }

    void addSingleConnection(Node &connection)
    {
        if (std::find(receivers.begin(), receivers.end(), connection) == receivers.end())
            (receivers.push_back(connection));
    }

    bool operator==(const Node &other) const
    {
        // Compare the properties of the two Node objects
        return id == other.id;
    }

    void shuffleConnections()
    {
        std::cout << "Called Shuffle on NID " << id << std::endl;
        if (receivers.size() == 0 || receivers.size() == 1)
        {
            return;
        }
        else
        {
            
            std::cout << "Continued 1 Shuffle on NID " << id << std::endl;
            int num_combinations = combination(receivers.size(), 2);
            std::cout << num_combinations <<  " Combinations on NID " << id << std::endl;
            Node a = rand() % num_combinations;
            Node b = a;
            while (a.id == b.id)
            {
                b = rand() % num_combinations;
            }

            std::cout << "Completed 2 Shuffle on NID " << id << std::endl;

            addDualConnection(a);
            addDualConnection(b);
            a.addSingleConnection(b);
            b.addSingleConnection(a);

            std::cout << "Completed Shuffle on NID " << id << std::endl;

            receivers.clear();
        }
    }
};

void periodic(Node* nodes, const int MAX_NODES)
{
    while (true)
    {
        
        std::cout << "Called Periodic" << std::endl;
        for (int i = 0; i < MAX_NODES; i++)
        {
            std::cout << "Started Node " << i << std::endl;
            nodes[i].shuffleConnections();
            std::cout << "Completed Node " << i << std::endl;
        }
        std::this_thread::sleep_until(std::chrono::steady_clock::now() + std::chrono::seconds(5));
    }
}

int main()
{
    const int MAX_NODES = 8;

    void *memory = malloc(MAX_NODES * sizeof(Node));
    Node *nodes = static_cast<Node *>(memory);

    // create 12 nodes
    for (int i = 0; i < MAX_NODES; i++)
    {
        new (&nodes[i]) Node(i);
    }


    // idea: the current connections of the command center are sent to each node - safe since they rotate and delete
    nodes[0].addDualConnection(nodes[1]);
    nodes[0].addDualConnection(nodes[2]);
    nodes[0].addDualConnection(nodes[6]);
    nodes[1].addDualConnection(nodes[5]);
    nodes[1].addDualConnection(nodes[6]);
    nodes[2].addDualConnection(nodes[3]);
    nodes[3].addDualConnection(nodes[4]);
    nodes[3].addDualConnection(nodes[7]);
    nodes[4].addDualConnection(nodes[5]);
    nodes[4].addDualConnection(nodes[7]);
    nodes[5].addDualConnection(nodes[6]);
    nodes[6].addDualConnection(nodes[7]);

    
    std::thread periodicThread(periodic, nodes, MAX_NODES);

    std::cout << nodes << "  " << nodes + MAX_NODES << std::endl;

    periodicThread.join();

    return 0;
}
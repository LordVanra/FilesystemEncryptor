	.file	"graphsystem.cpp"
	.text
	.section	.text$_ZnwyPv,"x"
	.linkonce discard
	.globl	_ZnwyPv
	.def	_ZnwyPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZnwyPv
_ZnwyPv:
.LFB149:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZdlPvS_,"x"
	.linkonce discard
	.globl	_ZdlPvS_
	.def	_ZdlPvS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZdlPvS_
_ZdlPvS_:
.LFB151:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.text
	.globl	_Z11combinationii
	.def	_Z11combinationii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11combinationii
_Z11combinationii:
.LFB2804:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %eax
	subl	24(%rbp), %eax
	cmpl	%eax, 24(%rbp)
	jle	.L5
	movl	16(%rbp), %eax
	subl	24(%rbp), %eax
	movl	%eax, 24(%rbp)
.L5:
	movl	$1, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L6
.L7:
	movl	16(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	-4(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-4(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -4(%rbp)
	addl	$1, -8(%rbp)
.L6:
	movl	-8(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L7
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implD1Ev
_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implD1Ev:
.LFB2811:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorI4NodeED2Ev
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4NodeSaIS0_EEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4NodeSaIS0_EEC2Ev
	.def	_ZNSt12_Vector_baseI4NodeSaIS0_EEC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4NodeSaIS0_EEC2Ev
_ZNSt12_Vector_baseI4NodeSaIS0_EEC2Ev:
.LFB2812:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implC1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4NodeSaIS0_EEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4NodeSaIS0_EEC1Ev
	.def	_ZNSt6vectorI4NodeSaIS0_EEC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4NodeSaIS0_EEC1Ev
_ZNSt6vectorI4NodeSaIS0_EEC1Ev:
.LFB2815:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EEC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4NodeC1Ei,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4NodeC1Ei
	.def	_ZN4NodeC1Ei;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4NodeC1Ei
_ZN4NodeC1Ei:
.LFB2817:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4NodeSaIS0_EEC1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4Node17addDualConnectionERS_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4Node17addDualConnectionERS_
	.def	_ZN4Node17addDualConnectionERS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4Node17addDualConnectionERS_
_ZN4Node17addDualConnectionERS_:
.LFB2821:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	64(%rsp), %rbp
	.seh_setframe	%rbp, 64
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4NodeSaIS0_EE3endEv
	movq	%rax, -32(%rbp)
	movq	32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4NodeSaIS0_EE3endEv
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4NodeSaIS0_EE5beginEv
	movq	40(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt4findIN9__gnu_cxx17__normal_iteratorIP4NodeSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	testb	%al, %al
	je	.L17
	movq	32(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt6vectorI4NodeSaIS0_EE9push_backERKS0_
.L17:
	movq	32(%rbp), %rdx
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN4Node19addSingleConnectionERS_
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4Node19addSingleConnectionERS_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4Node19addSingleConnectionERS_
	.def	_ZN4Node19addSingleConnectionERS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4Node19addSingleConnectionERS_
_ZN4Node19addSingleConnectionERS_:
.LFB2822:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	leaq	64(%rsp), %rbp
	.seh_setframe	%rbp, 64
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4NodeSaIS0_EE3endEv
	movq	%rax, -32(%rbp)
	movq	32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4NodeSaIS0_EE3endEv
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4NodeSaIS0_EE5beginEv
	movq	40(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZSt4findIN9__gnu_cxx17__normal_iteratorIP4NodeSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	testb	%al, %al
	je	.L23
	movq	32(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	call	_ZNSt6vectorI4NodeSaIS0_EE9push_backERKS0_
.L23:
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK4NodeeqERKS_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK4NodeeqERKS_
	.def	_ZNK4NodeeqERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK4NodeeqERKS_
_ZNK4NodeeqERKS_:
.LFB2823:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %edx
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4NodeD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4NodeD1Ev
	.def	_ZN4NodeD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4NodeD1Ev
_ZN4NodeD1Ev:
.LFB2827:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4NodeSaIS0_EED1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4NodeC1ERKS_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4NodeC1ERKS_
	.def	_ZN4NodeC1ERKS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4NodeC1ERKS_
_ZN4NodeC1ERKS_:
.LFB2830:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	24(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4NodeSaIS0_EEC1ERKS2_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "  \0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2831:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	leaq	64(%rsp), %rbp
	.seh_setframe	%rbp, 64
	.seh_endprologue
	call	__main
	movl	$8, -8(%rbp)
	movl	$256, %ecx
	call	malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L29
.L31:
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	%rbx, %rdx
	movl	$32, %ecx
	call	_ZnwyPv
	movq	%rax, %rsi
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	%rsi, %rcx
	call	_ZN4NodeC1Ei
	movl	$0, %eax
	testb	%al, %al
	je	.L33
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZdlPvS_
.L33:
	nop
	addl	$1, -4(%rbp)
.L29:
	cmpl	$7, -4(%rbp)
	jle	.L31
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN4Node17addDualConnectionERS_
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN4Node17addDualConnectionERS_
	movq	-24(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN4Node17addDualConnectionERS_
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	-24(%rbp), %rdx
	addq	$160, %rdx
	movq	%rax, %rcx
	call	_ZN4Node17addDualConnectionERS_
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	-24(%rbp), %rdx
	addq	$192, %rdx
	movq	%rax, %rcx
	call	_ZN4Node17addDualConnectionERS_
	movq	-24(%rbp), %rax
	addq	$64, %rax
	movq	-24(%rbp), %rdx
	addq	$96, %rdx
	movq	%rax, %rcx
	call	_ZN4Node17addDualConnectionERS_
	movq	-24(%rbp), %rax
	addq	$96, %rax
	movq	-24(%rbp), %rdx
	subq	$-128, %rdx
	movq	%rax, %rcx
	call	_ZN4Node17addDualConnectionERS_
	movq	-24(%rbp), %rax
	addq	$96, %rax
	movq	-24(%rbp), %rdx
	addq	$224, %rdx
	movq	%rax, %rcx
	call	_ZN4Node17addDualConnectionERS_
	movq	-24(%rbp), %rax
	subq	$-128, %rax
	movq	-24(%rbp), %rdx
	addq	$160, %rdx
	movq	%rax, %rcx
	call	_ZN4Node17addDualConnectionERS_
	movq	-24(%rbp), %rax
	subq	$-128, %rax
	movq	-24(%rbp), %rdx
	addq	$224, %rdx
	movq	%rax, %rcx
	call	_ZN4Node17addDualConnectionERS_
	movq	-24(%rbp), %rax
	addq	$160, %rax
	movq	-24(%rbp), %rdx
	addq	$192, %rdx
	movq	%rax, %rcx
	call	_ZN4Node17addDualConnectionERS_
	movq	-24(%rbp), %rax
	addq	$192, %rax
	movq	-24(%rbp), %rdx
	addq	$224, %rdx
	movq	%rax, %rcx
	call	_ZN4Node17addDualConnectionERS_
	movq	-24(%rbp), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEPKv
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	addq	$256, %rax
	movq	%rax, %rdx
	call	_ZNSolsEPKv
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$0, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implC1Ev
	.def	_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implC1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implC1Ev
_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implC1Ev:
.LFB3110:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	nop
	nop
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4NodeSaIS0_EED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4NodeSaIS0_EED2Ev
	.def	_ZNSt12_Vector_baseI4NodeSaIS0_EED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4NodeSaIS0_EED2Ev
_ZNSt12_Vector_baseI4NodeSaIS0_EED2Ev:
.LFB3115:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$5, %rax
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EE13_M_deallocateEPS0_y
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3115:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3115-.LLSDACSB3115
.LLSDACSB3115:
.LLSDACSE3115:
	.section	.text$_ZNSt12_Vector_baseI4NodeSaIS0_EED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorI4NodeSaIS0_EED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4NodeSaIS0_EED1Ev
	.def	_ZNSt6vectorI4NodeSaIS0_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4NodeSaIS0_EED1Ev
_ZNSt6vectorI4NodeSaIS0_EED1Ev:
.LFB3119:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EE19_M_get_Tp_allocatorEv
	movq	16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt8_DestroyIP4NodeEvT_S2_
	nop
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EED2Ev
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3119:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3119-.LLSDACSB3119
.LLSDACSB3119:
.LLSDACSE3119:
	.section	.text$_ZNSt6vectorI4NodeSaIS0_EED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorI4NodeSaIS0_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4NodeSaIS0_EE5beginEv
	.def	_ZNSt6vectorI4NodeSaIS0_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4NodeSaIS0_EE5beginEv
_ZNSt6vectorI4NodeSaIS0_EE5beginEv:
.LFB3120:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	nop
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4NodeSaIS0_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4NodeSaIS0_EE3endEv
	.def	_ZNSt6vectorI4NodeSaIS0_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4NodeSaIS0_EE3endEv
_ZNSt6vectorI4NodeSaIS0_EE3endEv:
.LFB3121:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	nop
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt4findIN9__gnu_cxx17__normal_iteratorIP4NodeSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_,"x"
	.linkonce discard
	.globl	_ZSt4findIN9__gnu_cxx17__normal_iteratorIP4NodeSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_
	.def	_ZSt4findIN9__gnu_cxx17__normal_iteratorIP4NodeSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4findIN9__gnu_cxx17__normal_iteratorIP4NodeSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_
_ZSt4findIN9__gnu_cxx17__normal_iteratorIP4NodeSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_:
.LFB3122:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops17__iter_equals_valIK4NodeEENS0_16_Iter_equals_valIT_EERS5_
	movq	%rax, %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIP4NodeSt6vectorIS2_SaIS2_EEEENS0_5__ops16_Iter_equals_valIKS2_EEET_SC_SC_T0_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4NodeSaIS0_EE9push_backERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4NodeSaIS0_EE9push_backERKS0_
	.def	_ZNSt6vectorI4NodeSaIS0_EE9push_backERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4NodeSaIS0_EE9push_backERKS0_
_ZNSt6vectorI4NodeSaIS0_EE9push_backERKS0_:
.LFB3124:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	leaq	96(%rsp), %rbp
	.seh_setframe	%rbp, 96
	.seh_endprologue
	movq	%rcx, 48(%rbp)
	movq	%rdx, 56(%rbp)
	movq	48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L44
	movq	48(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rbx
	movq	%rbx, %rdx
	movl	$32, %ecx
	call	_ZnwyPv
	movq	%rax, %rsi
	movl	$1, %r12d
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	%rsi, %rcx
.LEHB0:
	call	_ZN4NodeC1ERKS_
.LEHE0:
	movl	$0, %eax
	testb	%al, %al
	je	.L47
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZdlPvS_
.L47:
	nop
	nop
	movq	48(%rbp), %rax
	movq	8(%rax), %rax
	leaq	32(%rax), %rdx
	movq	48(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L53
.L52:
	movq	%rax, %rdi
	testb	%r12b, %r12b
	je	.L50
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZdlPvS_
.L50:
	movq	%rdi, %rax
	movq	%rax, %rcx
.LEHB1:
	call	_Unwind_Resume
.L44:
	movq	56(%rbp), %rdx
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4NodeSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
.LEHE1:
.L53:
	nop
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3124:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3124-.LLSDACSB3124
.LLSDACSB3124:
	.uleb128 .LEHB0-.LFB3124
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L52-.LFB3124
	.uleb128 0
	.uleb128 .LEHB1-.LFB3124
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE3124:
	.section	.text$_ZNSt6vectorI4NodeSaIS0_EE9push_backERKS0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNKSt6vectorI4NodeSaIS0_EE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI4NodeSaIS0_EE4sizeEv
	.def	_ZNKSt6vectorI4NodeSaIS0_EE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI4NodeSaIS0_EE4sizeEv
_ZNKSt6vectorI4NodeSaIS0_EE4sizeEv:
.LFB3126:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$5, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4NodeSaIS0_EEC1ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4NodeSaIS0_EEC1ERKS2_
	.def	_ZNSt6vectorI4NodeSaIS0_EEC1ERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4NodeSaIS0_EEC1ERKS2_
_ZNSt6vectorI4NodeSaIS0_EEC1ERKS2_:
.LFB3129:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	leaq	96(%rsp), %rbp
	.seh_setframe	%rbp, 96
	.seh_endprologue
	movq	%rcx, 48(%rbp)
	movq	%rdx, 56(%rbp)
	movq	48(%rbp), %rbx
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseI4NodeSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, -8(%rbp)
	leaq	-49(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	nop
	nop
	nop
	nop
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4NodeSaIS0_EE4sizeEv
	leaq	-49(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
.LEHB2:
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EEC2EyRKS1_
.LEHE2:
	leaq	-49(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorI4NodeED2Ev
	nop
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rsi
	movq	48(%rbp), %rax
	movq	(%rax), %rdi
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4NodeSaIS0_EE3endEv
	movq	%rax, %rbx
	movq	56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4NodeSaIS0_EE5beginEv
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
.LEHB3:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK4NodeSt6vectorIS2_SaIS2_EEEES8_PS2_S2_ET1_T_T0_SA_RSaIT2_E
.LEHE3:
	movq	48(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	.L64
.L62:
	movq	%rax, %rbx
	leaq	-49(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorI4NodeED2Ev
	nop
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB4:
	call	_Unwind_Resume
.L63:
	movq	%rax, %rbx
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
	nop
.LEHE4:
.L64:
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3129:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3129-.LLSDACSB3129
.LLSDACSB3129:
	.uleb128 .LEHB2-.LFB3129
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L62-.LFB3129
	.uleb128 0
	.uleb128 .LEHB3-.LFB3129
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L63-.LFB3129
	.uleb128 0
	.uleb128 .LEHB4-.LFB3129
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE3129:
	.section	.text$_ZNSt6vectorI4NodeSaIS0_EEC1ERKS2_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4NodeSaIS0_EE17_Vector_impl_dataC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4NodeSaIS0_EE17_Vector_impl_dataC2Ev
	.def	_ZNSt12_Vector_baseI4NodeSaIS0_EE17_Vector_impl_dataC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4NodeSaIS0_EE17_Vector_impl_dataC2Ev
_ZNSt12_Vector_baseI4NodeSaIS0_EE17_Vector_impl_dataC2Ev:
.LFB3251:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorI4NodeED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorI4NodeED2Ev
	.def	_ZNSt15__new_allocatorI4NodeED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorI4NodeED2Ev
_ZNSt15__new_allocatorI4NodeED2Ev:
.LFB3254:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4NodeSaIS0_EE13_M_deallocateEPS0_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4NodeSaIS0_EE13_M_deallocateEPS0_y
	.def	_ZNSt12_Vector_baseI4NodeSaIS0_EE13_M_deallocateEPS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4NodeSaIS0_EE13_M_deallocateEPS0_y
_ZNSt12_Vector_baseI4NodeSaIS0_EE13_M_deallocateEPS0_y:
.LFB3256:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L69
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorI4NodeE10deallocateEPS0_y
	nop
.L69:
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4NodeSaIS0_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4NodeSaIS0_EE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseI4NodeSaIS0_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4NodeSaIS0_EE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseI4NodeSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB3257:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx5__ops17__iter_equals_valIK4NodeEENS0_16_Iter_equals_valIT_EERS5_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx5__ops17__iter_equals_valIK4NodeEENS0_16_Iter_equals_valIT_EERS5_
	.def	_ZN9__gnu_cxx5__ops17__iter_equals_valIK4NodeEENS0_16_Iter_equals_valIT_EERS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx5__ops17__iter_equals_valIK4NodeEENS0_16_Iter_equals_valIT_EERS5_
_ZN9__gnu_cxx5__ops17__iter_equals_valIK4NodeEENS0_16_Iter_equals_valIT_EERS5_:
.LFB3262:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops16_Iter_equals_valIK4NodeEC1ERS3_
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIP4NodeSt6vectorIS2_SaIS2_EEEENS0_5__ops16_Iter_equals_valIKS2_EEET_SC_SC_T0_,"x"
	.linkonce discard
	.globl	_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIP4NodeSt6vectorIS2_SaIS2_EEEENS0_5__ops16_Iter_equals_valIKS2_EEET_SC_SC_T0_
	.def	_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIP4NodeSt6vectorIS2_SaIS2_EEEENS0_5__ops16_Iter_equals_valIKS2_EEET_SC_SC_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIP4NodeSt6vectorIS2_SaIS2_EEEENS0_5__ops16_Iter_equals_valIKS2_EEET_SC_SC_T0_
_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIP4NodeSt6vectorIS2_SaIS2_EEEENS0_5__ops16_Iter_equals_valIKS2_EEET_SC_SC_T0_:
.LFB3263:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	jmp	.L75
.L82:
	movq	16(%rbp), %rax
	addq	$32, %rax
	movq	%rax, 16(%rbp)
	nop
.L75:
	leaq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	leaq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	setne	%al
	testb	%al, %al
	je	.L80
	movq	16(%rbp), %rdx
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx5__ops16_Iter_equals_valIK4NodeEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_
	xorl	$1, %eax
	testb	%al, %al
	je	.L80
	movl	$1, %eax
	jmp	.L81
.L80:
	movl	$0, %eax
.L81:
	testb	%al, %al
	jne	.L82
	movq	16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "vector::_M_realloc_append\0"
	.section	.text$_ZNSt6vectorI4NodeSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4NodeSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
	.def	_ZNSt6vectorI4NodeSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4NodeSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_
_ZNSt6vectorI4NodeSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_:
.LFB3267:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$224, %rsp
	.seh_stackalloc	224
	leaq	224(%rsp), %rbp
	.seh_setframe	%rbp, 224
	.seh_endprologue
	movq	%rcx, 48(%rbp)
	movq	%rdx, 56(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	48(%rbp), %rax
	movq	%rdx, %r8
	movl	$1, %edx
	movq	%rax, %rcx
.LEHB5:
	call	_ZNKSt6vectorI4NodeSaIS0_EE12_M_check_lenEyPKc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	movq	48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4NodeSaIS0_EE5beginEv
	movq	%rax, -160(%rbp)
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4NodeSaIS0_EE3endEv
	movq	%rax, -152(%rbp)
	leaq	-152(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-160(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$5, %rax
	movq	%rax, -32(%rbp)
	movq	48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EE11_M_allocateEy
.LEHE5:
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	48(%rbp), %r8
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt6vectorI4NodeSaIS0_EE12_Guard_allocC1EPS0_yRSt12_Vector_baseIS0_S1_E
	movq	56(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, -120(%rbp)
	movq	-120(%rbp), %rdx
	movq	48(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rbx
	movq	%rbx, %rdx
	movl	$32, %ecx
	call	_ZnwyPv
	movq	%rax, %rsi
	movl	$1, %r12d
	movq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	%rsi, %rcx
.LEHB6:
	call	_ZN4NodeC1ERKS_
.LEHE6:
	movl	$0, %eax
	testb	%al, %al
	je	.L93
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZdlPvS_
.L93:
	jmp	.L98
.L97:
	movq	%rax, %rdi
	testb	%r12b, %r12b
	je	.L96
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZdlPvS_
.L96:
	movq	%rdi, %rbx
	leaq	-192(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4NodeSaIS0_EE12_Guard_allocD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB7:
	call	_Unwind_Resume
.LEHE7:
.L98:
	nop
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-40(%rbp), %r8
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r9
	movq	%rax, %rcx
	call	_ZNSt6vectorI4NodeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	movq	%rax, -48(%rbp)
	addq	$32, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	48(%rbp), %rax
	movq	16(%rax), %rax
	subq	-16(%rbp), %rax
	sarq	$5, %rax
	movq	%rax, -184(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorI4NodeSaIS0_EE12_Guard_allocD1Ev
	movq	48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	48(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	48(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$224, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3267:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3267-.LLSDACSB3267
.LLSDACSB3267:
	.uleb128 .LEHB5-.LFB3267
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB3267
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L97-.LFB3267
	.uleb128 0
	.uleb128 .LEHB7-.LFB3267
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE3267:
	.section	.text$_ZNSt6vectorI4NodeSaIS0_EE17_M_realloc_appendIJRKS0_EEEvDpOT_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNKSt12_Vector_baseI4NodeSaIS0_EE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt12_Vector_baseI4NodeSaIS0_EE19_M_get_Tp_allocatorEv
	.def	_ZNKSt12_Vector_baseI4NodeSaIS0_EE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt12_Vector_baseI4NodeSaIS0_EE19_M_get_Tp_allocatorEv
_ZNKSt12_Vector_baseI4NodeSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB3271:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4NodeSaIS0_EEC2EyRKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4NodeSaIS0_EEC2EyRKS1_
	.def	_ZNSt12_Vector_baseI4NodeSaIS0_EEC2EyRKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4NodeSaIS0_EEC2EyRKS1_
_ZNSt12_Vector_baseI4NodeSaIS0_EEC2EyRKS1_:
.LFB3274:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rax
	movq	48(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implC1ERKS1_
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
.LEHB8:
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EE17_M_create_storageEy
.LEHE8:
	jmp	.L104
.L103:
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB9:
	call	_Unwind_Resume
	nop
.LEHE9:
.L104:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3274:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3274-.LLSDACSB3274
.LLSDACSB3274:
	.uleb128 .LEHB8-.LFB3274
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L103-.LFB3274
	.uleb128 0
	.uleb128 .LEHB9-.LFB3274
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE3274:
	.section	.text$_ZNSt12_Vector_baseI4NodeSaIS0_EEC2EyRKS1_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNKSt6vectorI4NodeSaIS0_EE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI4NodeSaIS0_EE5beginEv
	.def	_ZNKSt6vectorI4NodeSaIS0_EE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI4NodeSaIS0_EE5beginEv
_ZNKSt6vectorI4NodeSaIS0_EE5beginEv:
.LFB3276:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	nop
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorI4NodeSaIS0_EE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI4NodeSaIS0_EE3endEv
	.def	_ZNKSt6vectorI4NodeSaIS0_EE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI4NodeSaIS0_EE3endEv
_ZNKSt6vectorI4NodeSaIS0_EE3endEv:
.LFB3277:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	nop
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK4NodeSt6vectorIS2_SaIS2_EEEES8_PS2_S2_ET1_T_T0_SA_RSaIT2_E,"x"
	.linkonce discard
	.globl	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK4NodeSt6vectorIS2_SaIS2_EEEES8_PS2_S2_ET1_T_T0_SA_RSaIT2_E
	.def	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK4NodeSt6vectorIS2_SaIS2_EEEES8_PS2_S2_ET1_T_T0_SA_RSaIT2_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK4NodeSt6vectorIS2_SaIS2_EEEES8_PS2_S2_ET1_T_T0_SA_RSaIT2_E
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK4NodeSt6vectorIS2_SaIS2_EEEES8_PS2_S2_ET1_T_T0_SA_RSaIT2_E:
.LFB3278:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK4NodeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3minIyERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3minIyERKT_S2_S2_
	.def	_ZSt3minIyERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3minIyERKT_S2_S2_
_ZSt3minIyERKT_S2_S2_:
.LFB3314:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L112
	movq	24(%rbp), %rax
	jmp	.L113
.L112:
	movq	16(%rbp), %rax
.L113:
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIP4NodeEvT_S2_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIP4NodeEvT_S2_
	.def	_ZSt8_DestroyIP4NodeEvT_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIP4NodeEvT_S2_
_ZSt8_DestroyIP4NodeEvT_S2_:
.LFB3354:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	jmp	.L115
.L117:
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt8_DestroyI4NodeEvPT_
	addq	$32, 16(%rbp)
.L115:
	movq	16(%rbp), %rax
	cmpq	24(%rbp), %rax
	jne	.L117
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx5__ops16_Iter_equals_valIK4NodeEC1ERS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx5__ops16_Iter_equals_valIK4NodeEC1ERS3_
	.def	_ZN9__gnu_cxx5__ops16_Iter_equals_valIK4NodeEC1ERS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx5__ops16_Iter_equals_valIK4NodeEC1ERS3_
_ZN9__gnu_cxx5__ops16_Iter_equals_valIK4NodeEC1ERS3_:
.LFB3357:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx5__ops16_Iter_equals_valIK4NodeEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx5__ops16_Iter_equals_valIK4NodeEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_
	.def	_ZN9__gnu_cxx5__ops16_Iter_equals_valIK4NodeEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx5__ops16_Iter_equals_valIK4NodeEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_
_ZN9__gnu_cxx5__ops16_Iter_equals_valIK4NodeEclINS_17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEEEEbT_:
.LFB3358:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK4NodeeqERKS_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorI4NodeSaIS0_EE12_M_check_lenEyPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI4NodeSaIS0_EE12_M_check_lenEyPKc
	.def	_ZNKSt6vectorI4NodeSaIS0_EE12_M_check_lenEyPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI4NodeSaIS0_EE12_M_check_lenEyPKc
_ZNKSt6vectorI4NodeSaIS0_EE12_M_check_lenEyPKc:
.LFB3362:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4NodeSaIS0_EE8max_sizeEv
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4NodeSaIS0_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	40(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L123
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt20__throw_length_errorPKc
.L123:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4NodeSaIS0_EE4sizeEv
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4NodeSaIS0_EE4sizeEv
	movq	%rax, -16(%rbp)
	leaq	40(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3maxIyERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -8(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4NodeSaIS0_EE4sizeEv
	cmpq	%rax, -8(%rbp)
	jb	.L124
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4NodeSaIS0_EE8max_sizeEv
	cmpq	-8(%rbp), %rax
	jnb	.L125
.L124:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt6vectorI4NodeSaIS0_EE8max_sizeEv
	jmp	.L127
.L125:
	movq	-8(%rbp), %rax
.L127:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4NodeSaIS0_EE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4NodeSaIS0_EE11_M_allocateEy
	.def	_ZNSt12_Vector_baseI4NodeSaIS0_EE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4NodeSaIS0_EE11_M_allocateEy
_ZNSt12_Vector_baseI4NodeSaIS0_EE11_M_allocateEy:
.LFB3364:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L129
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
	call	_ZNSt15__new_allocatorI4NodeE8allocateEyPKv
	nop
	jmp	.L131
.L129:
	movl	$0, %eax
.L131:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4NodeSaIS0_EE12_Guard_allocC1EPS0_yRSt12_Vector_baseIS0_S1_E,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4NodeSaIS0_EE12_Guard_allocC1EPS0_yRSt12_Vector_baseIS0_S1_E
	.def	_ZNSt6vectorI4NodeSaIS0_EE12_Guard_allocC1EPS0_yRSt12_Vector_baseIS0_S1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4NodeSaIS0_EE12_Guard_allocC1EPS0_yRSt12_Vector_baseIS0_S1_E
_ZNSt6vectorI4NodeSaIS0_EE12_Guard_allocC1EPS0_yRSt12_Vector_baseIS0_S1_E:
.LFB3367:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4NodeSaIS0_EE12_Guard_allocD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4NodeSaIS0_EE12_Guard_allocD1Ev
	.def	_ZNSt6vectorI4NodeSaIS0_EE12_Guard_allocD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4NodeSaIS0_EE12_Guard_allocD1Ev
_ZNSt6vectorI4NodeSaIS0_EE12_Guard_allocD1Ev:
.LFB3370:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L136
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rbp), %rdx
	movq	8(%rdx), %rcx
	movq	16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EE13_M_deallocateEPS0_y
.L136:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4NodeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorI4NodeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
	.def	_ZNSt6vectorI4NodeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4NodeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_
_ZNSt6vectorI4NodeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_:
.LFB3372:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	40(%rbp), %r8
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt12__relocate_aIP4NodeS1_SaIS0_EET0_T_S4_S3_RT1_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implC1ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implC1ERKS1_
	.def	_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implC1ERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implC1ERKS1_
_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implC1ERKS1_:
.LFB3376:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	nop
	nop
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EE17_Vector_impl_dataC2Ev
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4NodeSaIS0_EE17_M_create_storageEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4NodeSaIS0_EE17_M_create_storageEy
	.def	_ZNSt12_Vector_baseI4NodeSaIS0_EE17_M_create_storageEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4NodeSaIS0_EE17_M_create_storageEy
_ZNSt12_Vector_baseI4NodeSaIS0_EE17_M_create_storageEy:
.LFB3377:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EE11_M_allocateEy
	movq	16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rbp), %rdx
	salq	$5, %rdx
	addq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK4NodeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_,"x"
	.linkonce discard
	.globl	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK4NodeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
	.def	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK4NodeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK4NodeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK4NodeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_:
.LFB3381:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK4NodeSt6vectorIS2_SaIS2_EEEES8_PS2_ET1_T_T0_SA_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorI4NodeE10deallocateEPS0_y,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorI4NodeE10deallocateEPS0_y
	.def	_ZNSt15__new_allocatorI4NodeE10deallocateEPS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorI4NodeE10deallocateEPS0_y
_ZNSt15__new_allocatorI4NodeE10deallocateEPS0_y:
.LFB3444:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPvy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyI4NodeEvPT_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyI4NodeEvPT_
	.def	_ZSt8_DestroyI4NodeEvPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyI4NodeEvPT_
_ZSt8_DestroyI4NodeEvPT_:
.LFB3446:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN4NodeD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorI4NodeSaIS0_EE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorI4NodeSaIS0_EE8max_sizeEv
	.def	_ZNKSt6vectorI4NodeSaIS0_EE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorI4NodeSaIS0_EE8max_sizeEv
_ZNKSt6vectorI4NodeSaIS0_EE8max_sizeEv:
.LFB3448:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt12_Vector_baseI4NodeSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	call	_ZNSt6vectorI4NodeSaIS0_EE11_S_max_sizeERKS1_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3maxIyERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3maxIyERKT_S2_S2_
	.def	_ZSt3maxIyERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3maxIyERKT_S2_S2_
_ZSt3maxIyERKT_S2_S2_:
.LFB3449:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L149
	movq	24(%rbp), %rax
	jmp	.L150
.L149:
	movq	16(%rbp), %rax
.L150:
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12__relocate_aIP4NodeS1_SaIS0_EET0_T_S4_S3_RT1_,"x"
	.linkonce discard
	.globl	_ZSt12__relocate_aIP4NodeS1_SaIS0_EET0_T_S4_S3_RT1_
	.def	_ZSt12__relocate_aIP4NodeS1_SaIS0_EET0_T_S4_S3_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12__relocate_aIP4NodeS1_SaIS0_EET0_T_S4_S3_RT1_
_ZSt12__relocate_aIP4NodeS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB3451:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rbp), %r8
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt14__relocate_a_1IP4NodeS1_SaIS0_EET0_T_S4_S3_RT1_
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK4NodeSt6vectorIS2_SaIS2_EEEES8_PS2_ET1_T_T0_SA_,"x"
	.linkonce discard
	.globl	_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK4NodeSt6vectorIS2_SaIS2_EEEES8_PS2_ET1_T_T0_SA_
	.def	_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK4NodeSt6vectorIS2_SaIS2_EEEES8_PS2_ET1_T_T0_SA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK4NodeSt6vectorIS2_SaIS2_EEEES8_PS2_ET1_T_T0_SA_
_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK4NodeSt6vectorIS2_SaIS2_EEEES8_PS2_ET1_T_T0_SA_:
.LFB3455:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	leaq	80(%rsp), %rbp
	.seh_setframe	%rbp, 80
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	leaq	48(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt19_UninitDestroyGuardIP4NodevEC1ERS1_
	jmp	.L157
.L164:
	movq	32(%rbp), %rdx
	movq	48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
.LEHB10:
	call	_ZSt10_ConstructI4NodeJRKS0_EEvPT_DpOT0_
.LEHE10:
	movq	32(%rbp), %rax
	addq	$32, %rax
	movq	%rax, 32(%rbp)
	nop
	movq	48(%rbp), %rax
	addq	$32, %rax
	movq	%rax, 48(%rbp)
.L157:
	leaq	32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	leaq	40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	setne	%al
	testb	%al, %al
	jne	.L164
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt19_UninitDestroyGuardIP4NodevE7releaseEv
	movq	48(%rbp), %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt19_UninitDestroyGuardIP4NodevED1Ev
	movq	%rbx, %rax
	jmp	.L168
.L167:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt19_UninitDestroyGuardIP4NodevED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB11:
	call	_Unwind_Resume
.LEHE11:
.L168:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3455:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3455-.LLSDACSB3455
.LLSDACSB3455:
	.uleb128 .LEHB10-.LFB3455
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L167-.LFB3455
	.uleb128 0
	.uleb128 .LEHB11-.LFB3455
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE3455:
	.section	.text$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK4NodeSt6vectorIS2_SaIS2_EEEES8_PS2_ET1_T_T0_SA_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorI4NodeSaIS0_EE11_S_max_sizeERKS1_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorI4NodeSaIS0_EE11_S_max_sizeERKS1_
	.def	_ZNSt6vectorI4NodeSaIS0_EE11_S_max_sizeERKS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4NodeSaIS0_EE11_S_max_sizeERKS1_
_ZNSt6vectorI4NodeSaIS0_EE11_S_max_sizeERKS1_:
.LFB3486:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$288230376151711743, %rax
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$288230376151711743, %rax
	nop
	nop
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3minIyERKT_S2_S2_
	movq	(%rax), %rax
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt15__new_allocatorI4NodeE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt15__new_allocatorI4NodeE8allocateEyPKv
	.def	_ZNSt15__new_allocatorI4NodeE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt15__new_allocatorI4NodeE8allocateEyPKv
_ZNSt15__new_allocatorI4NodeE8allocateEyPKv:
.LFB3487:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$288230376151711743, %rax
	cmpq	24(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L176
	movabsq	$576460752303423487, %rax
	cmpq	24(%rbp), %rax
	jnb	.L177
	call	_ZSt28__throw_bad_array_new_lengthv
.L177:
	call	_ZSt17__throw_bad_allocv
.L176:
	movq	24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	call	_Znwy
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt14__relocate_a_1IP4NodeS1_SaIS0_EET0_T_S4_S3_RT1_,"x"
	.linkonce discard
	.globl	_ZSt14__relocate_a_1IP4NodeS1_SaIS0_EET0_T_S4_S3_RT1_
	.def	_ZSt14__relocate_a_1IP4NodeS1_SaIS0_EET0_T_S4_S3_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt14__relocate_a_1IP4NodeS1_SaIS0_EET0_T_S4_S3_RT1_
_ZSt14__relocate_a_1IP4NodeS1_SaIS0_EET0_T_S4_S3_RT1_:
.LFB3489:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L180
.L183:
	movq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt19__relocate_object_aI4NodeS0_SaIS0_EEvPT_PT0_RT1_
	addq	$32, 16(%rbp)
	addq	$32, -8(%rbp)
.L180:
	movq	16(%rbp), %rax
	cmpq	24(%rbp), %rax
	jne	.L183
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt19_UninitDestroyGuardIP4NodevEC1ERS1_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt19_UninitDestroyGuardIP4NodevEC1ERS1_
	.def	_ZNSt19_UninitDestroyGuardIP4NodevEC1ERS1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt19_UninitDestroyGuardIP4NodevEC1ERS1_
_ZNSt19_UninitDestroyGuardIP4NodevEC1ERS1_:
.LFB3495:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt19_UninitDestroyGuardIP4NodevED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt19_UninitDestroyGuardIP4NodevED1Ev
	.def	_ZNSt19_UninitDestroyGuardIP4NodevED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt19_UninitDestroyGuardIP4NodevED1Ev
_ZNSt19_UninitDestroyGuardIP4NodevED1Ev:
.LFB3498:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L188
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZSt8_DestroyIP4NodeEvT_S2_
.L188:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10_ConstructI4NodeJRKS0_EEvPT_DpOT0_,"x"
	.linkonce discard
	.globl	_ZSt10_ConstructI4NodeJRKS0_EEvPT_DpOT0_
	.def	_ZSt10_ConstructI4NodeJRKS0_EEvPT_DpOT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10_ConstructI4NodeJRKS0_EEvPT_DpOT0_
_ZSt10_ConstructI4NodeJRKS0_EEvPT_DpOT0_:
.LFB3502:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 48(%rbp)
	movq	%rdx, 56(%rbp)
	movq	48(%rbp), %rbx
	movq	%rbx, %rdx
	movl	$32, %ecx
	call	_ZnwyPv
	movq	%rax, %rsi
	movl	$1, %r12d
	movq	56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	%rsi, %rcx
.LEHB12:
	call	_ZN4NodeC1ERKS_
.LEHE12:
	movl	$0, %eax
	testb	%al, %al
	je	.L191
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZdlPvS_
.L191:
	jmp	.L195
.L194:
	movq	%rax, %rdi
	testb	%r12b, %r12b
	je	.L193
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZdlPvS_
.L193:
	movq	%rdi, %rax
	movq	%rax, %rcx
.LEHB13:
	call	_Unwind_Resume
	nop
.LEHE13:
.L195:
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3502:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3502-.LLSDACSB3502
.LLSDACSB3502:
	.uleb128 .LEHB12-.LFB3502
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L194-.LFB3502
	.uleb128 0
	.uleb128 .LEHB13-.LFB3502
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE3502:
	.section	.text$_ZSt10_ConstructI4NodeJRKS0_EEvPT_DpOT0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt19_UninitDestroyGuardIP4NodevE7releaseEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt19_UninitDestroyGuardIP4NodevE7releaseEv
	.def	_ZNSt19_UninitDestroyGuardIP4NodevE7releaseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt19_UninitDestroyGuardIP4NodevE7releaseEv
_ZNSt19_UninitDestroyGuardIP4NodevE7releaseEv:
.LFB3503:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt19__relocate_object_aI4NodeS0_SaIS0_EEvPT_PT0_RT1_,"x"
	.linkonce discard
	.globl	_ZSt19__relocate_object_aI4NodeS0_SaIS0_EEvPT_PT0_RT1_
	.def	_ZSt19__relocate_object_aI4NodeS0_SaIS0_EEvPT_PT0_RT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt19__relocate_object_aI4NodeS0_SaIS0_EEvPT_PT0_RT1_
_ZSt19__relocate_object_aI4NodeS0_SaIS0_EEvPT_PT0_RT1_:
.LFB3519:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$144, %rsp
	.seh_stackalloc	144
	leaq	144(%rsp), %rbp
	.seh_setframe	%rbp, 144
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	48(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	32(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rbx
	movq	%rbx, %rdx
	movl	$32, %ecx
	call	_ZnwyPv
	movq	%rax, %rsi
	movq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	movq	%rsi, %rcx
	call	_ZN4NodeC1EOS_
	movl	$0, %eax
	testb	%al, %al
	je	.L201
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZdlPvS_
.L201:
	nop
	nop
	movq	40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN4NodeD1Ev
	nop
	nop
	nop
	addq	$144, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4NodeSaIS0_EEC2EOS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4NodeSaIS0_EEC2EOS2_
	.def	_ZNSt12_Vector_baseI4NodeSaIS0_EEC2EOS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4NodeSaIS0_EEC2EOS2_
_ZNSt12_Vector_baseI4NodeSaIS0_EEC2EOS2_:
.LFB3536:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implC1EOS3_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorI4NodeSaIS0_EEC1EOS2_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorI4NodeSaIS0_EEC1EOS2_
	.def	_ZNSt6vectorI4NodeSaIS0_EEC1EOS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorI4NodeSaIS0_EEC1EOS2_
_ZNSt6vectorI4NodeSaIS0_EEC1EOS2_:
.LFB3539:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EEC2EOS2_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN4NodeC1EOS_,"x"
	.linkonce discard
	.align 2
	.globl	_ZN4NodeC1EOS_
	.def	_ZN4NodeC1EOS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4NodeC1EOS_
_ZN4NodeC1EOS_:
.LFB3541:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	addq	$8, %rax
	movq	24(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rcx
	call	_ZNSt6vectorI4NodeSaIS0_EEC1EOS2_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implC1EOS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implC1EOS3_
	.def	_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implC1EOS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implC1EOS3_
_ZNSt12_Vector_baseI4NodeSaIS0_EE12_Vector_implC1EOS3_:
.LFB3545:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	nop
	nop
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseI4NodeSaIS0_EE17_Vector_impl_dataC2EOS3_
	nop
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseI4NodeSaIS0_EE17_Vector_impl_dataC2EOS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseI4NodeSaIS0_EE17_Vector_impl_dataC2EOS3_
	.def	_ZNSt12_Vector_baseI4NodeSaIS0_EE17_Vector_impl_dataC2EOS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseI4NodeSaIS0_EE17_Vector_impl_dataC2EOS3_
_ZNSt12_Vector_baseI4NodeSaIS0_EE17_Vector_impl_dataC2EOS3_:
.LFB3548:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders, r1) 15.2.0"
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPKv;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZSt28__throw_bad_array_new_lengthv;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.linkonce	discard
.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_:
	.quad	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout

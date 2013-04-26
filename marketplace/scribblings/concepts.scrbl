#lang scribble/manual
@require[racket/include]
@include{prelude.inc}

@title{Concepts}

In this paper, we present a novel "marketplace" approach to
functional systems programming, generalizing
 Felleisen et al.'s "Worlds and Universes" approach to
functional I/O
[ICFP 2009]. We integrate ideas from both distributed systems
and virtualized operating system designs to obtain a novel
architecture of nested virtual machines. Each nested layer is equipped with
its own publish/subscribe network that also propagates information
about the (dis)appearance of services. Our paper presents
several case studies, including a recursive DNS resolver that
has served our lab's DNS traffic for the past nine months.

Our goal is to reconcile this tension, starting from the "Worlds
and Universes" approach to functional I/O and
generalizing to
functional systems programming. We augment
its inherent support for concurrency with publish/subscribe (pub/sub)
messaging, a notion of presence, and
nestable virtual machines (VMs). The result suggests a @emph{
marketplace} metaphor, where communicating programs exist in a
noisy, crowded, even chaotic context, rather than in a quiet place
systematically going through their inboxes.

@section{What is a process, what are event handlers?}

@deftech[#:key "process"]{Processes} are ...

@section{What is a VM?}

@deftech[#:key "vm"]{Virtual Machines (VMs)} are ...

@section{Endpoints: Subscription and Advertisement}

@deftech{Endpoints} are ...

**** orientation
**** topics, patterns and messages
**** interest-type
**** roles

Always used to describe the role some process is playing in a
conversation. Can be used by the currently-running process to describe
some role it wishes to play, or can be carried in some
@racket[EndpointEvent] to describe the role some @emph{peer} process
is playing in a conversation.

@section{Presence}
@section{Nesting, relaying, and levels of discourse}

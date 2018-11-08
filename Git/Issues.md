# Git

## Received HTTP code 502 from proxy after CONNECT

```
fatal: unable to access '[repository]': Received HTTP code 502 from proxy after CONNECT
```

```sh
git config --global --unset http.sslVerify
```

## RPC failed

```
error: RPC failed; result=22, HTTP code = 411
```

```sh
git config http.postBuffer 524288000
```

## Certificate

```
fatal: unable to access 'https://username@domain.org/company/project.git/': SSL certificate problem: unable to get local issuer certificate
```

```sh
git config http.sslVerify false
```

## Msysgit Issue

```
0 [main] us 0 init_cheap: VirtualAlloc pointer is null, Win32 error 487
AllocationBase 0x0, BaseAddress 0x68570000, RegionSize 0xE0000, State 0x10000
C:\Tools\cmder\vendor\msysgit\bin\sh.exe: *** Couldn't reserve space for cygwin's heap, Win32 error 0
```

```sh
cd C:\Tools\cmder\vendor\msysgit\bin
```

Exec command

```sh
rebase.exe -b 0x50000000 msys-1.0.dll
```

## Editor Issue

Output message after run `git commit --amend`:

```sh
error: Terminal is dumb, but EDITOR unset
Please supply the message using either -m or -F option.
```

Solve this issue setting the `core.editor` value:

```sh
git config --global core.editor "vim"
git config --global core.editor "atom --wait"
git config --global core.editor "subl -n -w"
git config --global core.editor "mate -w"
```

```sh
export GIT_EDITOR=vim
```

## Push

```
> error: src refspec project does not match any.
> error: failed to push some refs to 'project@domain.com:project'
```

```sh
git push -u origin master
```

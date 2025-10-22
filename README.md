# to get start with haskell you can follow this guide
> https://www.haskell.org/get-started/#set-up-a-haskell-development-environment

use this one to set up your envinroment, if you have VSCODE you might install many tools that can help with highlight and other things, so, feel free to do that and lets get start.


### GHCup is the main installer for the general purpose language Haskell.
https://www.haskell.org/ghcup/
```
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

### GHCup: universal installer
GHCup is a universal installer for Haskell that will install everything you need to program in Haskell, and will help you manage those installations (update, switch versions, …). GHCup does not require root/admin access. Follow the instructions on the GHCup webpage to install GHCup. Then use it to install the Haskell toolchain, which consists of:

* GHC (The Haskell compiler) We will use GHC below to run our examples, but in practice you will mostly use a tool like Cabal or Stack to build your code, instead of GHC directly.
* HLS (The Haskell Language Server) You won’t use HLS directly, instead your code editor will use it in the background to provide you with a great experience while editing Haskell code.
* Cabal (A Haskell build tool) You will use Cabal to structure your Haskell projects, build them, run them, define dependencies, … .
* Stack (A Haskell build tool) An alternative to Cabal.

### GHCI 
We have everything set up, let’s use it! The Haskell compiler, GHC, comes with an interactive interpreter called GHCi which is great for playing with Haskell and trying things out, so let’s give it a spin. Run ghci at your command prompt, which will start a new GHCi prompt for you.
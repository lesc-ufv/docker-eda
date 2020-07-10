# Docker Collection of EDA Tools for Emerging  Technologies

[[_TOC_]]

This repository holds files to compose docker images, of Electronic Design Automation (EDA) tools.

## Tools

 [ABC: An Academic Industrial-Strength Verification Tool](https://github.com/berkeley-abc/abc)

> Robert Brayton and Alan Mishchenko. 2010.   ABC: An Academic Industrial-Strength Verification Tool. InComputer Aided Verification, Tayssir Touili, ByronCook, and Paul Jackson (Eds.). Springer Berlin Heidelberg, Berlin, Heidelberg,24–40.   https://doi.org/10.1007/978-3-642-14295-6_5

[Cirkit - From the EFPL Logic and Synthesis Libraries](https://github.com/msoeken/cirkit)

> Mathias Soeken, Heinz Riener, Winston Haaswijk, and Giovanni De Micheli.2018. The EPFL logic synthesis libraries.  arXiv:1805.05121.

[Fiction: An Open Source Framework for the Design of Field-coupled Nanocomputing Circuits](https://github.com/marcelwa/fiction)

> Walter, Marcel & Wille, Robert & Sill Torres, Frank & Große, Daniel & Drechsler, Rolf. (2019). fiction: An Open Source Framework for the Design of Field-coupled Nanocomputing Circuits.

[Topolinano:  A cad tool for nano magnetic logic](https://topolinano.polito.it/)

> F.  Riente,  G.  Turvani,  M.  Vacca,  M.  R.  Roch,  M.  Zamboni,  and M. Graziano, “Topolinano:  A cad tool for nano magnetic logic,” pp.1061–1074, 2017

[NMLSim 1.0](https://link.springer.com/article/10.1007/s10825-018-1215-8)

> Soares, T.R.B.S., Nizer Rahmeier, J.G., de Lima, V.C. *et al.* NMLSim: a Nanomagnetic Logic (NML) circuit designer and simulation tool.                    *J Comput Electron* **17,** 1370–1381 (2018). https://doi.org/10.1007/s10825-018-1215-8

[NMLSIM 2.0](https://ieeexplore.ieee.org/document/8862290)

> L. A. Lascasas Freitas, O. P. Vilela Neto, J. G. N. Rahmeier and L. G.  C. Melo, "NMLSim 2.0: A robust CAD and simulation tool for in-plane  Nanomagnetic Logic based on the LLG equation," *2019 32nd Symposium on Integrated Circuits and Systems Design (SBCCI)*, Sao Paulo, Brazil, 2019, pp. 1-6.

## Usage

### How does it work?

You just need to [install docker](https://docs.docker.com/get-docker/) on you machine and execute the command(s) for the preferred tool(s).

:whale: A folder called `shared` will appear in the current working directory, this folder is shared between the container and the local machine. 

:warning: Important: Only files written in this folder from inside the container will persist.

---

The only step needed after docker is installed, is to download the script:

```sh
wget -O eda.sh https://gitlab.com/formigoni/docker-eda/-/raw/master/eda.sh
chmod +x eda.sh
```

---

### :wrench: ABC

```sh
./eda.sh abc
```
### :wrench: Cirkit

```sh
./eda.sh cirkit
```
### :wrench: Fiction
```sh
./eda.sh fiction
```

### :wrench: Topolinano

```sh
./eda.sh topolinano
```
### :wrench: NmlSim 1.0

```sh
./eda.sh nmlsim-1
```

### :wrench: NmlSim 2.0

```sh
./eda.sh nmlsim-2
```

---

When the script is ran without arguments, it shows all available options:

```sh
Usage: ./eda.sh tool 
List of tools: 
  --  abc       
  --  cirkit    
  --  fiction   
  --  nmlsim-1  
  --  nmlsim-2  
  --  topolinano
```


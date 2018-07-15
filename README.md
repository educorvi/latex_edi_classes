# latex_edi_classes

Autoren
=======

- Franz Lampe (lampe.franz@web.de)
- Lars Walther (walther.educorvi@gmail.de)

Installation
============

TexLive 2017
------------


```
  $ git clone https://github.com/educorvi/latex_edi_classes.git
  $ vi /usr/local/texlive/2017/texmf.cnf
```

Please add your own path to the path-environment-var:

TEXMFHOME = $HOME/Library/texmf,$HOME/latex_edi_classes/editexmf


```
  $ texhash
```

With the following command you can check if your private-dir is part of TEXMFHOME:

```
  $ kpsepath -n latex tex
```

Update the latex registration:

```
  $ sudo mktexlsr
```

Check if your Latex-Distribution is able to find your Class-File:

```
  $ kpsewhich your_class_file.cls
```

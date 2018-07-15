# latex_edi_classes

Autoren
=======

- Franz Lampe (lampe.franz@web.de)
- Lars Walther (walther.educorvi@gmail.de)

Installation
============

TexLive 2017
------------

.. code:: bash

  $ git clone https://github.com/educorvi/latex_edi_classes.git
  $ vi /usr/local/texlive/2017/texmf.cnf

# Please add your own path to the path-environment-var
TEXMFHOME = ~/Library/texmf,~/latex_edi_classes/editexmf

.. code:: bash

  $ texhash

With the following command you can check if your private-dir is part of TEXMFHOME

.. code:: bash

  $ kpsepath -n latex tex
  
Update the latex registration

.. code:: bash

  $ sudo mktexlsr

Check if your Latex-Distribution can find your Class-File

.. code:: bash

  $ kpsewhich your_class_file.cls

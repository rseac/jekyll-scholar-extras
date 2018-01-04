jekyll-scholar-extras
=====================

```jekyll-scholar-extras``` provides customized generators and tags for generating a publication bibliography with individual details pages from a [BibTeX](http://www.bibtex.org) file. This resembles other [BibTeX](http://www.bibtex.org) to HTML converters such as [bibtex2web](http://www.cs.washington.edu/homes/mernst/software/#bibtex2web).

These customizations are extensions to [Jekyll](http://jekyllrb.com/) and [Jekyll-Scholar](https://github.com/inukshuk/jekyll-scholar). 

Installation
------------

You must compile ```jekyll-scholar-extras``` from source.  If someone is interested in publishing to a gem server, then I would be happy to help enable this.

```bash
$ gem build jekyll-scholar-extras.gemspec; 
$ gem install jekyll-scholar-extras-<version-number>.gem  
```

Vagrant Method
-------------

It may be simpler to just use a vagrant setup to get jekyll-scholar-extras working.  Make sure the pre-requisites for vagrant are already installed.  Once you ssh into the vagrant box, you should have the jekyll-template generated.

```bash
$ cd jekyll-scholar-extras/vagrant
$ vagrant up
$ vagrant provision
$ vagrant ssh
```

Usage
-----
To enable ```jekyll-scholar-extras```, add a file in your plugin directory (e.g., to `_plugins/jekyll-scholar-extras.rb`) with the following:

      require 'jekyll/scholar/extras'


# Features
These extras provide some additional features over the vanilla Jekyll-Scholar.  These are described below:

## Disable generation of BibTeX entries marked to not be public.
One can include `public` field for any BibTeX entry.  If the `public` field is set to `{yes}` then the corresponding entry will be generated.  If the `public` field is set to `{no}` then it will not.


# Create a PDF and SLIDES download link based on the BibTeX key associated with each entry.

[jekyll-scholar](https://github.com/inukshuk/jekyll-scholar) already supports repositories.  However, one may want to upload presentations associated with an article as well, and have them automatically generated.  To do this, simply include a presentation file whose name is the `key` suffixed with `_slides`.  For example, a BibTeX entry with key `abc_xyz` would have two files:
* `abc_xyz.pdf`: The PDF paper download.
* `abc_xyz_slides.pdf`: The PDF of the presentation.

User-defined customizations of these are still in progress.

# Example


An example setup that uses the customized bibliography and details page generators and tags.
* [Sample 1](https://caesr.uwaterloo.ca//publications/index.html)


License
-------

```jekyll-scholar-extras``` is distributed under the same license as Jekyll.

Copyright (c) 2012-2018 [CAESR](https://caesr.uwaterloo.ca/)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the 'Software'), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

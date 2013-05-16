# Competitive matrix between dawn and other security static code scanners

This is the point where I try to answer the very good question: _dawn? it is a
great tool but which are the differences between it and ( put your favorite
tool here )?_

Of course, as you may wonder, I'm the dawn author so I can be less impartial
than a third party review that it is strongly encouraged and that it will put
linked to this page (even in case you will make criticisms to my tool)

## The competitors

As the time I'm writing this (05/15/2013) the only opensource source code
security static analyzer (let's call them SAST form this point) supporting ruby
is [brakeman scanner](http://brakemanscanner.org/).

### Brakeman

[Brakeman](http://brakemanscanner.org) is a good tool, it is mature and it is
widespread among the community. It's approaching the second major release of
its history.

It is born to support [Ruby on Rails](http://rubyonrails.org) written web
applications.

### Dawn

Dawn is born to support the application security startup I'm building,
[codesake.com](http://codesake.com). Since community gives me a lot in all
these years, the statica analyzer will be opensource and **I won't change this
decision, ever**.

Dawn supports web applications written using 
[Ruby on Rails](http://rubyonrails.org), [Sinatra](http://sinatrarb.com) and
[Padrino](http://padrinorb.com)

Since a lot of javascript code is used in the web applications nowadays, I'll
introduce a preliminary support for javascript before launching version 1.0.
Javascript support it will be focused on checking for reflected and DOM based
Cross site scripting attacks.

In a future (on version 1.5 accordingly to the Roadmap), node.js written web
applications will be supported as well.

## The comparison

### Basic features

|Feature                | Dawn          | Brakeman          |
|-----------------------|---------------|-------------------|
| Version               | 0.51          | 1.9.5             |
| Production ready?     | NO            | YES               |
| Sinatra support       | YES           | NO                |
| Padrino support       | NO *planned*  | NO                |
| Rails support         | YES           | YES               |
| Node.js support       | NO *planned*  | NO                |
| Plain text output     | YES           | YES               |
| Json output           | YES           | NO                |
| HTML output           | NO            | YES               |

### CVE security checks

| CVE Check             | Dawn          | Brakeman          |
|-----------------------|---------------|-------------------|
| CVE-2011-2931         | YES           | YES               |
| CVE-2012-2660         | YES           | YES               |
| CVE-2012-2661         | YES           | YES               |
| CVE-2012-2694         | YES           | YES               |
| CVE-2012-2695         | YES           | YES               |
| CVE-2012-3465         | YES           | YES               |
| CVE-2012-3464         | NO            | YES               |
| CVE-2012-3463         | NO            | YES               |
| CVE-2012-6496         | YES           | NO                |
| CVE-2012-5664         | NO            | YES               |
| CVE-2012-6497         | YES           | NO                |
| CVE-2013-1855         | YES           | YES               |
| CVE-2013-1800         | YES           | NO                |
| CVE-2013-0333         | YES           | YES               |
| CVE-2013-0269         | YES           | YES               |
| CVE-2013-1857         | YES           | YES               |
| CVE-2013-0155         | YES           | YES               |
| CVE-2013-0333         | YES           | YES               |
| CVE-2011-0447         | NO            | YES               |
| CVE-2011-0446         | NO            | YES               |
| CVE-2013-1854         | YES           | YES               |
| CVE-2013-1856         | NO            | YES               |
| CVE-2013-0276         | NO            | YES               |
| CVE-2013-0277         | NO            | YES               |
| CVE-2013-0156         | NO            | YES               |
| CVE-2013-2090         | NO            | NO                |

### Quality checks

| Quality check         | Dawn          | Brakeman          |
|-----------------------|---------------|-------------------|
| Not revised code      | YES           | NO                |


### Application specific security checks

| Security check              | Dawn          | Brakeman          |
|-----------------------------|---------------|-------------------|
| Reflected XSS               | NO            | YES               |
| Stored XSS                  | NO            | YES *unsure*      |
| DOM Based XSS               | NO            | NO                |
| SQL injection               | NO            | YES               |
| Broken authentication       | NO            | NO                |
| Insecure object reference   | NO            | NO                |
| CSRF                        | NO            | YES *unsure*      |


## Third party reviews

If you blogged, twitted or in any case if you compare dawn with other SAST
available out there supporting ruby, please tell me and I'll add your review
here.


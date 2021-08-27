# doublehelix

http://github.com/johansenja/doublehelix forked from http://github.com/mame/doublehelix

## DESCRIPTION:

doublehelix obfuscates Ruby codes in Double-helix style.
This is inspired by Perl's Acme::DoubleHelix.

## FEATURES/PROBLEMS:


## SYNOPSIS:

This is a "Hello, world!" program obfucated by doublehelix:

```
     at
    a--t
    t---a
    g----c
     g----c
      g----c
       t---a
        g--c
         at
         gc
        t--a
       g---c
      t----a
     a----t
    t----a
    g---c
    c--g
     at
     cg
    a--t
    a---t
    c----g
     a----t
      g----c
       g---c
        g--c
         cg
         gc
        a--t
       t---a
      c----g
     g----c
    a----t
    t---a
    c--g
     gc
     ta
    t--a
    c---g
    g----c
     a----t
      t----a
       c---g
        a--t
         at
         at
        c--g
       a---t
      t----a
     g----c
    t----a
    g---c
    t--a
     ta
     cg
    g--c
    c---g
    a----t
     t----a
      g----c
       a---t
        t--a
         cg
         gc
        a--t
       g---c
      c----g
     g----c
    g----c
    a---t
    c--g
     at
     cg
    a--t
    c---g
    a----t
```

You can obfuscate your script by doublehelix method:

```ruby
  require "doublehelix"
  puts doublehelix('puts"Hello, world!"')
```

or with the cli

```bash
  dh-gen input/file.rb output/file.rb
```

and then run the generated output like so

```bash
  dh output/file.rb
```

## REQUIREMENTS:

None

## LICENSE:

Copyright:: Yusuke Endoh <mame@tsg.ne.jp>
License:: Ruby's

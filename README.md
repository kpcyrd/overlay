```
layman -f -o https://raw.githubusercontent.com/kpcyrd/overlay/master/overlay.xml -a kpcyrd-overlay
```

### emerge -av app-eselect/eselect-repository 
(https://wiki.gentoo.org/wiki/Eselect/Repository)
####
*```eselect repository add kpcyrd-overlay git https://github.com/kpcyrd/overlay.git```*

as layman is slighlty depricated.  portage can manage the repo directly.. 
as well as enable/disable repo via eselect .. 

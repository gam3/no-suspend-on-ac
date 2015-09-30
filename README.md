
# Inhibit suspend on lid closure when your laptop is running on AC power.

I have a laptop and a desktop.  Given a choice I will work on my desktop as it 
has more and larger monitors and nicer keyboard and track ball.  However most of
my date is on my laptop so I need it to be on line.

To achieve this I had to keep the lid open on the laptop.  This is not alway convent
as there is a shortage of desk space.

I used to do this by editing the /etc/acpi/actions/sleep.sh acpi file.

With the advent of Systemd this process changes.

I created this package to make it easy to achieve this feature on Debian.

## Similar code

I got my idea for this package from the blog entry at:

http://nrocco.github.io/2014/06/05/suspend-prevent-systemd.html

And the code in this package is mostly a rewrite of the code from that blog entry.

## The basic idea

Every time you apply or remove power to you laptop *udev* emits and event.

The 50-no-suspend-on-lid-close-on-ac.rules file uses these event to start and stop the 
*no-suspend-on-lid-close* service.

The *no-suspend-on-lid-close-on-ac* service only runs on boot up.  It is used to start or
stop the *no-suspend-on-lid-close* service as *udev* does not send a signal at boot time.

The *no-suspend-on-lid-close-on-ac* service uses the *no-suspend-on-lid-close-on-ac* script to
control the *no-suspend-on-lid-close*.  

You can also use this script to change the state your laptop thinks it is in it you have some reason
for that.  However I normally find pressing Fn-F4 is the fastest way to enter sleep mode.




# Inhibit suspend on lid closure when your laptop is running on AC power.

I have a laptop and a desktop.  Given a choice I will work on my desktop as it 
has more and larger monitors and nicer keyboard and track ball.  However most of
my date is on my laptop so I need it to be on line.

To achieve this I had to keep the lid open on the laptop.  This is not alway convent
as there is a shortage of desk space.

I used to do this by editing the /etc/acpi/actions/sleep.sh acpi file.

With the advent of Systemd this process changes.

I created this package to make it easy to achieve this feature on Debian.


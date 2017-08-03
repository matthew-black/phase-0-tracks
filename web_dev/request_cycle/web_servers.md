# What are some of the key design philosophies of the Linux operating system?

#### Referring to Unix, but these also apply to Linux:
* *An operating system, by its nature, embodies the philosophy of its creators... The creators of the Unix operating system started with a radical concept: they assumed that the user of their operating system would be computer literate from the start. The entire Unix philosophy revolves around the idea that the user knows what he or she is doing.*
* *Unix was not designed to stop its users from doing stupid things, as that would also stop them from doing clever things.*

#### And there are nine major tenets of Linux philosophy:
1. Small is Beautiful
2. Each Program Does One Thing Well
3. Prototype as Soon as Possible
4. Choose Portability Over Efficiency
5. Store Data in Flat Text Files
6. Use Software Leverage
7. Use Shell Scripts to Increase Leverage and Portability
8. Avoid Captive User Interfaces
9. Make Every Program a Filter

Basically, Linux operating systems don't "protect" their users by limiting the scope of how they can interact with a computer.


# In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

A server is an actual, physical object that a computer can interact with. A VPS is a software-generated server. "Chunks" of processing power, RAM, and storage space are allocated from a physical server, and the result is a hosted space that functions like a normal server.

Advantages of a VPS:
* Cost!
* Way more reliable that shared web hosting: rather than sharing computing resources with other users (which can lead to performance issues), the resources you pay for with a VPS are *all yours*.
* Easily scalable. Rather than upgrading hardware on a physical server, you can just pay for more computing resources.
* It's good for earth! Sharing hardware reduces one's carbon footprint, and even though it's *shared,* the computing resources you pay for will always be yours--there's no need to worry about a performance baseline going up and down based on server load.


# Why is it considered a bad idea to run programs as the root user on a Linux system?

If you mess something up, you'll mess everything up. If you're logged in as a non-root user, and you do something silly, you've only impacted one user folder, as opposed to your entire system.

It's also a security measure. If someone gained access to your computer through your browser, the scope of what they'd be able to fuck up would be limited. Kind of like the ice-cube-tray design in the hull of the Titanic.
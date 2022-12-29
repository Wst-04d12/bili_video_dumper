# bili_video_dumper


This software has no relationship to bilibili.com and the any part of it.  
Granted by the basic law, the electronic devices owner have the rights to modify any local files on their computer as long as they keep it localy and not publicly.  
This software is ONLY LEGEL on that purpose, of modifying unplayable videos downloaded by the bilibili uwp client.  
The user must take his own responsibility on the any possible result of using this software by them self, the developer of this software are not going to take any part of them. In a word, USE AT YOUR OWN RISK.  
  
The tested runtime is unmodified Lua 5.4.x, and in the CMD and Windows Console Host as it runs, if you are using the other console like powershell, you might haveing some trouble on ensuring the file path you entered to the command line interface are not contains "&" or that kindof things, the default quote added by the CMD is acceptable, if you are still getting sone issue on the path, just delete any "" and & of the path, even if there is spaces in the path. Like this  
C:\test folder\my videos\video 1.mp4  
and press enter.  

The output will generated at the same directory where this program was being executed, and named `out.mp4`.  
No worry if you were putting the wrong things into this program, because it reads the input as `READ ONLY`, and if it has the wrong binary headers, the program will not continue but exit and give you the tip.

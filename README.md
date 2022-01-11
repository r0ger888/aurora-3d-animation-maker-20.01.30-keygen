How 2 keygen :

- find the magic string from which the app is hashed along with the registry info : ***AS32 TRE5 HGYJ GF65 TR99 0SDG 0SA3 1543 6OSD ASAW ASAW AA96 43DD SW90 ASAW AA87***
- concatenate the reg info buffer with this string and save them into variable in which ur going to compute md5 hash
- calculate the length of these two with **lstrlen** and save then into length buffer
- compute MD5 hash for these two strings and convert the hexadecimal chars to unicode with **HexToChar**
- the MD5 reg info hashing starts only from the ***4th position*** . so every part of the serial has 4 chars each, so include them with **lstrcpyn** and add the dashes with **lstrcat** - only for the first four parts.
- and finally , clear their memory for all the buffers used with **RtlZeroMemory** - *always do that after making and finalizing every keygen in assembly* .

By the way, this app also has a serial registration check from which the app verifies the serial number.
So as i mentioned in the testing area, you need to add their website in the hosts file from ***System32\drivers\etc*** folder :

```
127.0.0.1 www.presentation-3d.com
```

... otherwise it won't work.

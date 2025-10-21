# GIF-Builder:

</br>

![Compiler](https://github.com/user-attachments/assets/a916143d-3f1b-4e1f-b1e0-1067ef9e0401) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: ![D7](https://github.com/user-attachments/assets/718cfc22-ab47-4bf0-84e6-40525ae90950)  
![Components](https://github.com/user-attachments/assets/d6a7a7a4-f10e-4df1-9c4f-b4a1a8db7f0e) : ![gifimage pas](https://github.com/user-attachments/assets/8359eec4-5241-4355-93ed-9d15806254ef)  
![Discription](https://github.com/user-attachments/assets/4a778202-1072-463a-bfa3-842226e300af) &nbsp;&nbsp;: ![GIF-Builder](https://github.com/user-attachments/assets/a7c51343-31a0-4bd2-9213-e9619d812008)  
![Last Update](https://github.com/user-attachments/assets/e1d05f21-2a01-4ecf-94f3-b7bdff4d44dd) &nbsp;: ![102025](https://github.com/user-attachments/assets/62cea8cc-bd7d-49bd-b920-5590016735c0)  
![License](https://github.com/user-attachments/assets/ff71a38b-8813-4a79-8774-09a2f3893b48) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: ![Freeware](https://github.com/user-attachments/assets/1fea2bbf-b296-4152-badd-e1cdae115c43)

</br>

TGIFImage is a full TGraphic implementation of the GIF graphics format.

It reads, writes and displays animated GIFs and can convert to and from TBitmap (i.e. the BMP format) and any other TGraphic derived format (e.g TJPEGImage, TIcon and TMetaFile).TGIFImage can either be used stand-alone or as part of Delphi’s extensible TImage/TPicture/TGraphic framework. When used in connection with the TImage component, TGIFImage registers itself with the TPicture class, giving you instant support for the GIF format throughout Delphi. After installing TGIFImage, you will be able to load, save and display GIFs without any additional code!


![gif](https://github.com/user-attachments/assets/b0b06fc7-6c0e-476d-8518-a36313fd104a)



TGIFImage has full support for animated GIF and is the only solution that can display animated GIFs in the TImage component.
TGIFImage implements the complete GIF87a and GIF89a specification as well as all common GIF extensions:

* Transparency and interlacing
* Local- and global palettes of 2,4,8,16,32,64,128 & 256 colors
* Palette optimization
* Delay and Loops for animations
* Text- and comment extension
* Application extensions
* Disposal to previous frame and background image
And much more…

Support for new Application Extension types can be added by the developer without modification to the TGIFImage source by registering the format at run-time with TGIFImage.
To demonstrate its use, TGIFImage comes with several sample applications: The “GIF Explorer” that can be used to view GIF files and examine their structure, a “simple” web-counter that demonstrates how to use TGIFImage with the Delphi CGI, ISAPI and NSAPI components together, an animated button component and an AVI to GIF and GIF to AVI converter just to mention a few of them.

### Example 1 : Converting a BMP file to a GIF file.

```ruby
procedure ConvertBMP2GIF;
var
  bmp: TBitmap;
  gif: TGIFImage;
begin
  gif := TGifImage.Create;
  try
    bmp := TBitmap.Create;
    try
      bmp.LoadFromFile('MyBitmap.BMP');
      gif.Assign(bmp);
    finally
      bmp.Free;
    end;
    gif.SaveToFile('MyBitmap.GIF');
  finally
    gif.Free;
  end;
end;
```

### How do I make a transparent GIF?
Try something like this:
```ruby
var
  GIF: TGIFImage;
  Ext: TGIFGraphicControlExtension;
begin
  GIF := TGIFImage.Create;
  try
    // Convert bitmap to GIF
    GIF.Assign(Bitmap);
 
    // Create an extension to set the transparency flag
    Ext := TGIFGraphicControlExtension.Create(GIF.Images[0]);
    Ext.Transparent := True;
 
    // Set transparent color to lower left pixel color
    Ext.TransparentColorIndex := GIF.Images[0].Pixels[0, GIF.Height-1];
 
    // Do something with the GIF here...
    ...
  finally
    GIF.Free;
  end;
end;
```

Many other freeware GIF libraries exists, so you might wonder why we need another one… The need for TGIFImage arose when I was writing a CGI application that needed to create large GIF images on-the-fly. After having tested a number of freeware libraries I concluded that they weren’t quite fit for the job with regard to performance and GIF compliance. Some of the DLL based implementations were OK, but Delphi integration were missing. So after reading through the GIF specifications and several articles on LZW compression, I decided that it couldn’t be to hard to whip something useful together.

The name TGIFImage might be a bit unfortunate as almost every known Delphi implementation of the GIF format is called TGIFImage, but it’s the most logical name for the gizmo and it shouldn’t be a problem once I have made the “competing” implementations obsolete :-)

TGIFImage has been tested with several thousand GIF files, so I’m fairly confident that it will handle whatever you throw at it. If you find a valid GIF file that cannot be handled correctly by TGIFImage, please mail it to me with a description of the problem enter a QC report, and I’ll give you your money back :-)

So what can TGIFImage do and how does it differentiate itself from some of the other implementations?

### Features:
* Full source included.
* Derived from TGraphic.
* Supports all palette sizes.
* Fast decode and encode.
* Based on known solid algorithms.
* Handles unknown extensions gracefully.
* Tolerant. Loads and displays corrupt GIFs.
* Easy to extend.
* Reduces file size by minimizing palette size.
* Does not use idle-looping.
* Integrates with TImage, TOpenPictureDialog and TSavePictureDialog.
* Dithers to the Netscape web-safe palette on 256 color systems.
* Displays animations in TImage.
* Non-destructive GIF optimizer reduces GIF file size.
* Context sensitive on-line help.
* Automatic color reduction of bitmaps with more than 256 colors using color quantization and 6 different dithering methods (e.g. Floyd Steinberg).

### Optimize Features
* Merge
* Crop
* Clean Up
* Tranzparent
* Stretch
* Palette
### Color Options
* Netscape
* Monochrome
* Gray Scale
* Windows Gray
* Windows 256 (Best)
* Windows20
* Quantize
* Quantize Windows
### Dithering Modes:
* FloydSteinberg
* Nearest
* Sierra
* Stucki
* Burkes
* SteveArch

### Current Status:
In February 2007 I donated TGIFImage to [CodeGear](https://www.codegear.com/DevDaysofSummer/) with the purpose of adding in-the-box GIF support to the VCL, starting with Delphi 2007.

Besides giving me motivation to work on TGIFImage again, the transfer of ownership also gave me an opportunity to pull TGIFImage out the limbo it had been in and secure future development.

Where to get TGIFImage?
The official TGIFImage version 2.2 release is available from a lot of places on the net. However since the official release hasn’t been maintained since I distributed it in May 1999, I strongly suggest you use one of the following releases instead.

Finn Tolderlund’s Version 2.2.*
Finn has been maintaining TGIFImage on his own since my former web site disappeared. His version is based on the official TGIFImage version 2.2 release. For an updated TGIFImage version 2.2, supporting Delphi 5-2007, please go to Finn [Tolderlund’s web site](https://www.tolderlund.eu/delphi/). In addition to the updated sources, I recommend you also get the original version 2.2 installation kit (also available from Finn’s site), since that contains the documentation and all the demos.

CodeGear’s Version 3.0
Since Delphi 2007 TGIFImage version 3.0 is included with all revisions of Delphi. Please note that this version does not support earlier versions of Delphi.

Version 3.0 was written by me and is a fork of version 2.3, a version that was never widely released. By fork I mean that it isn’t meant as a progressive continuation of the old TGIFImage. Backward compatibility was not a design requirement of the new TGIFImage, so I took the opportunity to remedy some of the things that I felt was wrong in the old version and some of these things could only be done without consideration for backward compatibility. Those that need backward compatibility should use Finn’s version.

Version 3 differs from version 2.2 in the following ways:
* The interface has changed, but it is drop-in compatible with earlier version if one doesn’t use the TGIFImage class directly.
E.g. if you just use TImage to display GIFs, then you should be fine.
* Many classes and properties have been renamed for better consistency.
E.g. TGIFSubImage is now named TGIFFrame.
* The rendering engine has been completely rewritten from scratch.
The rendering of animated GIFs is now handled with a timer and windows messages instead of a thread. The primary implication of this change is that the rendering is now done synchronously instead of asynchronously. Not as sexy but more safe.
* Animation is disabled by default.
This was done for consistency with other (actually all other) TGraphic class (e.g. TBitmap, TIcon, etc). I judged that the average user wouldn’t want (or expect) animated content in TImage as no other TGraphic descendants support it. Please see the [FAQ](https://melander.dk/delphi/gifimage/#faq_35) for a description of how to enable animation.
* Support for earlier versions of Delphi has been removed.
Version 3 has only been tested on Delphi 2007 and later; It may or may not work with Delphi 2005 or Delphi 2006.
* The tiling feature has been removed from the TImage rendering.
The low level rendering engine still supports it though.
* It is no longer necessary to edit the source to configure options.
Most of the options that were previously configurable with conditional defines (i.e. compile time options) are now controlled with variables (i.e. run time options).

[Update: 03-apr-2008] The first of the demos is now available: [Animation Demo for TGIFImage v3](https://melander.dk/articles/gifanimate/).


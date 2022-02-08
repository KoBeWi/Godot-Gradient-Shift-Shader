# <img src="https://github.com/KoBeWi/Godot-Gradient-Shift-Shader/blob/main/Media/Icon.png" width="64" height="64"> Godot Gradient Shift Shader
A very simple shader that lets you achieve the effect of palette cycling. Using this shader is extremely cheap for performance.

## Basic usage

You need 2 images: base image, which is grayscale, and a palette, which is a single-row texture. The shader will map the colors from palettte to their grayscale equivalents (specifically, it uses red channel as value) and cycle the colors from the palette. With a proper distribution of colors, you can achieve effects like waterfalls, conveyor belts etc. Here's example:

![](https://github.com/KoBeWi/Godot-Gradient-Shift-Shader/blob/main/Media/ReadmeExample.gif)

## Caveats

To achieve the best effect, the textures need to meet these criteria:

- the grayscale texture must have `filter` import option disabled
- the color count in the original texture and the palette should be the same
- shades of gray in the original texture need to have equal increments in their value (e.g. `0.333`, `0.666`, `1.0`, but not `0.2`, `0.5`, `1.0`)

If you want more flexibility at the cost of some performance, check out my [palette swap shader](https://github.com/KoBeWi/Godot-Palette-Swap-Shader).

___
You can find all my addons on my [profile page](https://github.com/KoBeWi).

<a href='https://ko-fi.com/W7W7AD4W4' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://cdn.ko-fi.com/cdn/kofi1.png?v=3' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>

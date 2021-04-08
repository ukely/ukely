#!/bin/python3
import os
import sys

if len(sys.argv) > 1:
    lilypath = sys.argv[1]
else:
    lilypath = '.'


ly_find = os.popen(f'find {lilypath} -name "*.ly"').readlines()
ly_files = [ly.strip() for ly in ly_find if 'template' not in ly]


if not ly_find:
    print(f"No lilypond files found in {lilypath} directory")
    sys.exit(1)


img_template = ('  <a href="output/{link}"><img align="middle" border="0" '
                'src="output/{img}" alt="{alt}"></a>\n')
page_template = '''
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><body>
{img}
</body></html>
'''

index_line_template = '''
<a href="{link}">{title}</a><p>'''


# Set up directories
os.makedirs('html/output', exist_ok=True)


# Create HTML pages
index_page = """
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<link rel="stylesheet" href="style.css">
<body>
<h2>Ukulele Lilypond Songs</h2>
"""

# commands
lily_svg = ('lilypond -ddelete-intermediate-files -dno-point-and-click '
            '-djob-count=3 -dbackend=svg {ly}')

for ly in ly_files:
    result = os.popen(lily_svg.format(ly=ly)).read()
    html = os.path.basename(ly.replace(".ly",".html"))  # remove leading ./
    lypath = os.path.dirname(ly)
    svgs = [svg for svg in os.listdir('.') if '.svg' in svg]
    svgs.sort()
    midis = [midi for midi in os.listdir('.') if '.midi' in midi]
    title = os.path.basename(ly)
    imgs = ''
    if midis:
        midi = midis[0]
        result = os.popen(f'mv {midi} html/output/')
    else:
        midi = None
    for svg in svgs:
        if midi:
            link = midi
        else:
            link = svg
        imgs += img_template.format(link=link, img=svg, alt=title)
        result = os.popen(f'mv {svg} html/output/')
    open('html/'+html,'w').write(page_template.format(img=imgs))
    index_page += index_line_template.format(link=html, title=title)

index_page += """
</body>
</html>
"""

open('html/index.html', 'w').write(index_page)

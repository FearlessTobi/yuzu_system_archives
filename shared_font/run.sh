#!/bin/sh

# Create header files to include in yuzu
echo -n "// Git Hash: " > FontChineseSimplified.ttf.h
echo -n "// Git Hash: " > FontChineseTraditional.ttf.h
echo -n "// Git Hash: " > FontExtendedChineseSimplified.ttf.h
echo -n "// Git Hash: " > FontKorean.ttf.h
echo -n "// Git Hash: " > FontNintendoExtended.ttf.h
echo -n "// Git Hash: " > FontStandard.ttf.h

git rev-parse HEAD >> FontChineseSimplified.ttf.h
git rev-parse HEAD >> FontChineseTraditional.ttf.h
git rev-parse HEAD >> FontExtendedChineseSimplified.ttf.h
git rev-parse HEAD >> FontKorean.ttf.h
git rev-parse HEAD >> FontNintendoExtended.ttf.h
git rev-parse HEAD >> FontStandard.ttf.h

echo "" >> FontChineseSimplified.ttf.h
echo "" >> FontChineseTraditional.ttf.h
echo "" >> FontExtendedChineseSimplified.ttf.h
echo "" >> FontKorean.ttf.h
echo "" >> FontNintendoExtended.ttf.h
echo "" >> FontStandard.ttf.h

xxd -i FontChineseSimplified >> FontChineseSimplified.ttf.h
xxd -i FontChineseTraditional >> FontChineseTraditional.ttf.h
xxd -i FontExtendedChineseSimplified >> FontExtendedChineseSimplified.ttf.h
xxd -i FontKorean >> FontKorean.ttf.h
xxd -i FontNintendoExtended >> FontNintendoExtended.ttf.h
xxd -i FontStandard >> FontStandard.ttf.h
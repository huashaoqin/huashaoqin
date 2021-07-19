#!/usr/bin/env bash

TMP="/tmp/screenshot"

[ ! -f ${TMP} ] && mkdir -p ${TMP}

SCROT=`which maim`
SAVEPATH="${HOME}/work/person/pictures/screensave"
SAVEFORMAT=`date '+%Y%m%d-%H%M%S'`
CLIP=`which xclip`
CLIPIMG="${CLIP} -t image/png -selection clipboard"

TMPSAVE="${TMP}/${SAVEFORMAT}.png"
SAVEFILE="${SAVEPATH}/${SAVEFORMAT}.png"

function active() {
	$SCROT -s -u ${TMPSAVE}
}

function desktop() {
	$SCROT ${TMPSAVE}
}


if [[ $1 == 'active' ]]; then
	active
elif [[ $1 == 'desktop' ]]; then
	desktop
elif [[ $1 == 'clean' ]]; then
	rm -rf ${TMP}
	echo "OK!"
fi

if [[ $2 == 'save' ]]; then
	cp ${TMPSAVE} ${SAVEFILE}
elif [[ $2 == 'clip' ]]; then
	cat ${TMPSAVE} | ${CLIPIMG}
elif [[ $2 == 'all' ]]; then
	cp ${TMPSAVE} ${SAVEFILE}
	cat ${TMPSAVE} | ${CLIPIMG}
fi

rm -rf ${TMPSAVE}

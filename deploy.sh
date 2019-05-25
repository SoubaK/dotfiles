SAVE_DIR=$HOME/dotfiles.save
EMACS_DIR=$HOME/.emacs.d
DOTFILE_DIR=$(pwd)

DEP_EMACS=1
echo "Deploying dotfiles"

if [ ! -d "$SAVE_DIR" ]
then
    mkdir $SAVE_DIR
fi

echo "Checking for exixsting conf"

if [ -d "$EMACS_DIR" ]
then
    echo "Found existing emacs conf"
    DEP_EMACS=0
    read -p "Replace existing conf [y/N]:" ANS
    ANS=${ANS:-n}
    if [ $ANS = "y" ]
    then
	echo coucou
	DEP_EMACS=1
	rm -rf $SAVE_DIR/emacs
	mv $EMACS_DIR $SAVE_DIR/emacs
    fi
fi

echo $DEP_EMACS
if [ $DEP_EMACS -ge 1 ]
then
    echo "Deploying emacs"
    cd $HOME && ln -s $DOTFILE_DIR/emacs.d .emacs.d
fi



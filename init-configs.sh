rm -rf build-*/ .bdep/ *-host/

bdep init --empty
bdep config create build-targetX/ @targetX cc
bdep config create build-host/ @host cc --type host

bdep init @targetX { @host }+ ?libboost-container


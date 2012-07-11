all: deps compile

compile: rebar
	./rebar compile

deps: rebar
	./rebar get-deps

clean: rebar
	./rebar clean

test: compile
	ERL_FLAGS="+A 32" ./rebar skip_deps=true eunit

rebar:
	wget -q http://cloud.github.com/downloads/basho/rebar/rebar
	chmod u+x rebar

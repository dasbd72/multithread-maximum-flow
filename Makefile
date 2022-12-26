CC = gcc
CXX = g++
LDFLAGS = -lm
CXXFLAGS = -Wall -Wextra -O3 -fopenmp
# CXXFLAGS += -g -fsanitize=address
CXXFLAGS += -DTIMING
CXXFLAGS += -DDEBUG

EXES = main
DEPS = graph.cc utility.cc ford-fulkerson.cc push-relabel.cc

alls: $(EXES)

main: main.cc $(DEPS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ $^

clean:
	rm -f $(EXES)
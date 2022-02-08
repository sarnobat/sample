import io
import sys
import random
import argparse

parser = argparse.ArgumentParser(description='')
parser.add_argument(
	'-p', '--percent', default=0.1, type=float, help='percentage (of 1.0) of input to output')
args = parser.parse_args()

input_stream = io.TextIOWrapper(sys.stdin.buffer, newline=None, encoding='latin1')

for line in input_stream:

	if (random.random()  < args.percent):
		print(line.strip())
import io
import sys
import random
import argparse

parser = argparse.ArgumentParser(description='')
parser.add_argument(
	'-p', '--percent', default=10, type=float, help='percentage (of 100) of input to output')
args = parser.parse_args()

input_stream = io.TextIOWrapper(sys.stdin.buffer, newline=None, encoding='latin1')

for line in input_stream:

	if (random.random()  * 100 < args.percent):
		print(line.strip())
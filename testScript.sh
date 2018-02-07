echo "Running Tests on Null"
echo "one miilion swaps"
echo "4 threads"
java UnsafeMemory Null 4 1000000 127 5 6 3 0 3
echo "8 threads"
java UnsafeMemory Null 8 1000000 127 5 6 3 0 3
echo "16 threads"
java UnsafeMemory Null 16 1000000 127 5 6 3 0 3
echo "30 threads"
java UnsafeMemory Null 30 1000000 127 5 6 3 0 3

echo "Running Tests on Synchronized"
echo "one miilion swaps"
echo "4 threads"
java UnsafeMemory Synchronized 4 1000000 127 5 6 3 0 3
echo "8 threads"
java UnsafeMemory Synchronized 8 1000000 127 5 6 3 0 3
echo "16 threads"
java UnsafeMemory Synchronized 16 1000000 127 5 6 3 0 3
echo "30 threads"
java UnsafeMemory Synchronized 30 1000000 127 5 6 3 0 3

echo "Running Tests on Unsynchronized"
echo "one miilion swaps"
echo "4 threads"
java UnsafeMemory Unsynchronized 4 1000000 127 5 6 3 0 3
echo "8 threads"
java UnsafeMemory Unsynchronized 8 1000000 127 5 6 3 0 3
echo "16 threads"
java UnsafeMemory Unsynchronized 16 1000000 127 5 6 3 0 3
echo "30 threads"
java UnsafeMemory Unsynchronized 30 1000000 127 5 6 3 0 3

echo "Running Tests on GetNSet"
echo "one miilion swaps"
echo "4 threads"
java UnsafeMemory GetNSet 4 1000000 127 5 6 3 0 3
echo "8 threads"
java UnsafeMemory GetNSet 8 1000000 127 5 6 3 0 3
echo "16 threads"
java UnsafeMemory GetNSet 16 1000000 127 5 6 3 0 3
echo "30 threads"
java UnsafeMemory GetNSet 30 1000000 127 5 6 3 0 3

echo "Running Tests on BetterSafe"
echo "one miilion swaps"
echo "4 threads"
java UnsafeMemory BetterSafe 4 1000000 127 5 6 3 0 3
echo "8 threads"
java UnsafeMemory BetterSafe 8 1000000 127 5 6 3 0 3
echo "16 threads"
java UnsafeMemory BetterSafe 16 1000000 127 5 6 3 0 3
echo "30 threads"
java UnsafeMemory BetterSafe 30 1000000 127 5 6 3 0 3

echo "Running Tests on SemBetter"
echo "one miilion swaps"
echo "4 threads"
java UnsafeMemory SemBetter 4 1000000 6 5 6 3 0 3
echo "8 threads"
java UnsafeMemory SemBetter 8 1000000 6 5 6 3 0 3
echo "16 threads"
java UnsafeMemory SemBetter 16 1000000 6 5 6 3 0 3
echo "30 threads"
java UnsafeMemory SemBetter 30 1000000 6 5 6 3 0 3

echo "Running Tests on AtomBetter"
echo "one miilion swaps"
echo "4 threads"
java UnsafeMemory AtomBetter 4 1000000 6 5 6 3 0 3
echo "8 threads"
java UnsafeMemory AtomBetter 8 1000000 6 5 6 3 0 3
echo "16 threads"
java UnsafeMemory AtomBetter 16 1000000 6 5 6 3 0 3
echo "30 threads"
java UnsafeMemory AtomBetter 30 1000000 6 5 6 3 0 3

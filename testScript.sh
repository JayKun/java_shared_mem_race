echo "Running Tests on Synchronized"
echo "one miilion swaps"
echo "2 threads"
java UnsafeMemory Synchronized 2 1000000 6 5 6 3 0 3
java UnsafeMemory Synchronized 2 1000000 30 5 6 3 0 3
echo "4 threads"
java UnsafeMemory Synchronized 4 1000000 6 5 6 3 0 3
java UnsafeMemory Synchronized 4 1000000 30 5 6 3 0 3
echo "6 threads"
java UnsafeMemory Synchronized 6 1000000 6 5 6 3 0 3
java UnsafeMemory Synchronized 6 1000000 30 5 6 3 0 3
echo "8 threads"
java UnsafeMemory Synchronized 8 1000000 6 5 6 3 0 3
java UnsafeMemory Synchronized 8 1000000 30 5 6 3 0 3
echo "16 threads"
java UnsafeMemory Synchronized 16 1000000 6 5 6 3 0 3
java UnsafeMemory Synchronized 16 1000000 30 5 6 3 0 3
echo "Running Tests on Unsynchronized"
echo "one miilion swaps"
echo "2 threads"
java UnsafeMemory Unsynchronized 2 1000000 6 5 6 3 0 3
java UnsafeMemory Unsynchronized 2 1000000 30 5 6 3 0 3
echo "4 threads"
java UnsafeMemory Unsynchronized 4 1000000 6 5 6 3 0 3
java UnsafeMemory Unsynchronized 4 1000000 30 5 6 3 0 3
echo "6 threads"
java UnsafeMemory Unsynchronized 6 1000000 6 5 6 3 0 3
java UnsafeMemory Unsynchronized 6 1000000 30 5 6 3 0 3
echo "8 threads"
java UnsafeMemory Unsynchronized 8 1000000 6 5 6 3 0 3
java UnsafeMemory Unsynchronized 8 1000000 30 5 6 3 0 3
echo "16 threads"
java UnsafeMemory Unsynchronized 16 1000000 6 5 6 3 0 3
java UnsafeMemory Unsynchronized 16 1000000 30 5 6 3 0 3
echo "Running Tests on GetNSet"
echo "one miilion swaps"
echo "2 threads"
java UnsafeMemory GetNSet 2 1000000 6 5 6 3 0 3
java UnsafeMemory GetNSet 2 1000000 30 5 6 3 0 3
echo "4 threads"
java UnsafeMemory GetNSet 4 1000000 6 5 6 3 0 3
java UnsafeMemory GetNSet 4 1000000 30 5 6 3 0 3
echo "6 threads"
java UnsafeMemory GetNSet 6 1000000 6 5 6 3 0 3
java UnsafeMemory GetNSet 6 1000000 30 5 6 3 0 3
echo "8 threads"
java UnsafeMemory GetNSet 8 1000000 6 5 6 3 0 3
java UnsafeMemory GetNSet 8 1000000 30 5 6 3 0 3
echo "16 threads"
java UnsafeMemory GetNSet 16 1000000 6 5 6 3 0 3
java UnsafeMemory GetNSet 16 1000000 30 5 6 3 0 3
echo "Running Tests on BetterSafe"
echo "one miilion swaps"
echo "2 threads"
java UnsafeMemory BetterSafe 2 1000000 6 5 6 3 0 3
java UnsafeMemory BetterSafe 2 1000000 30 5 6 3 0 3
echo "4 threads"
java UnsafeMemory BetterSafe 4 1000000 6 5 6 3 0 3
java UnsafeMemory BetterSafe 4 1000000 30 5 6 3 0 3
echo "6 threads"
java UnsafeMemory BetterSafe 6 1000000 6 5 6 3 0 3
java UnsafeMemory BetterSafe 6 1000000 30 5 6 3 0 3
echo "8 threads"
java UnsafeMemory BetterSafe 8 1000000 6 5 6 3 0 3
java UnsafeMemory BetterSafe 8 1000000 30 5 6 3 0 3
echo "16 threads"
java UnsafeMemory BetterSafe 16 1000000 6 5 6 3 0 3
java UnsafeMemory BetterSafe 16 1000000 30 5 6 3 0 3

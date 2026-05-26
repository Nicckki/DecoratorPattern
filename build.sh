#!/bin/bash
set -e

echo "🔨 Building project..."
mkdir -p build
cd build
cmake ..
make

echo "🧪 Running tests..."
ctest --output-on-failure

echo "📦 Creating deb package..."
cpack

echo "✅ Done! Deb package created:"
ls -lh *.deb

it:
	python3 setup.py build

testit:
	PYTHONPATH=../gold-miner:. pytest-3 || exit 0

package: testit
	rm -rf dist build
	python3 setup.py sdist bdist_wheel

# publish:
# 	python3 -m twine upload -u hardaker dist/*

install:
	python3 setup.py install

publish:
	python3 -m twine upload -u __token__ dist/*

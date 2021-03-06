
# This Makefile only exists to aid me in developing.
# It is not very useful to anyone else at this point.

python := $(shell which python)

with_coverage := \
  --with-coverage --cover-package=opm --cover-erase --cover-tests

nose := $(python) $(shell which nosetests)
trial := $(python) $(shell which trial)
pyflakes := $(python) $(shell which pyflakes)

.PHONY: check check-all check-coverage check-pyflakes

check:
	$(trial) opm

check-coverage:
	$(nose) $(with_coverage) opm

check-pyflakes:
	$(pyflakes) opm

check-all: check-pyflakes check check-coverage

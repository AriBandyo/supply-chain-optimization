.PHONY:install pipeline test all clean

install:
	python -m pip install --upgrade pip
	pip install -r requirements.txt
	
pipeline:
	python -m data_pipeline.run_pipeline

test:
	pytest -q

all: install pipeline test

clean:
	rm -rf data/processed/*reports/*

help:
	@echo "Available commands:"
	@echo "  make install   -> install dependencies"
	@echo "  make pipeline  -> run ETL pipeline"
	@echo "  make test      -> run tests"
	@echo "  make all       -> install + pipeline + tests"
	@echo "  make clean     -> remove generated data"


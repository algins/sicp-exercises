install:
	raco pkg install --auto rackunit || true
	raco pkg install --auto sicp || true
	raco pkg install --auto review || true

test:
	raco test sicp

lint:
	@echo "check codestyle"
	@(for f in $$(find sicp -name '*.rkt'); do raco review $$f; done)

.PHONY: test
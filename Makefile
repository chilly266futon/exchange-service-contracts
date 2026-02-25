.PHONY: gen clean

gen:	clean
	buf generate --template buf.gen.order.yaml
	buf generate --template buf.gen.spot.yaml

clean:
	rm -rf gen/pb

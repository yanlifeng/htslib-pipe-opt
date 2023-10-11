#include <stdio.h>

#include "../cram/cram.h"
#include "../htslib/sam.h"
#include "../htslib/vcf.h"
#include "../htslib/hts_log.h"
#include "../htslib/bgzf.h"
#include "htslib/sam.h"
#include "htslib/bgzf.h"
#include "cram/cram.h"
#include "hts_internal.h"
#include "sam_internal.h"
#include "htslib/hfile.h"
#include "htslib/hts_endian.h"
#include "htslib/hts_expr.h"
#include "header.h"


#include "../cram/cram.h"
#include "../htslib/sam.h"
#include "../htslib/vcf.h"
#include "../htslib/hts_log.h"


int main (int argc, char* argv[]) {
	printf("%s\n", argv[1]);
	printf("%s\n", argv[2]);
	printf("%s\n", argv[3]);
	int ret = sam_index_build3_merge(argv[1], argv[2], 0, strtol(argv[3], NULL, 10));
	if (ret < 0) {
		if (ret == -2)
			fprintf(stderr, "failed to open \"%s\"", argv[1]);
		else if (ret == -3)
			fprintf(stderr, "\"%s\" is in a format that cannot be usefully indexed", argv[1]);
		else if (ret == -4 && argv[2])
			fprintf(stderr, "failed to create or write index \"%s\"", argv[2]);
		else if (ret == -4)
			fprintf(stderr, "failed to create or write index");
		else
			fprintf(stderr, "failed to create index for \"%s\"", argv[1]);
	}
	return 0;
}

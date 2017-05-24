#!/usr/bin/env sh

FILE=octaspire_easing_amalgamated.c

# Remove old file, if created
rm -rf $FILE

# Write license and the top-part of the include guards
cat >> $FILE << EnDoFmEsSaGe
/******************************************************************************
This work is based on Robert Penner's 'penner_easing_as1.txt'. The copyright
and license of the original work is:

Open source under the BSD License.

Copyright © 2001 Robert Penner
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

  • Redistributions of source code must retain the above copyright notice,
    this list of conditions and the following disclaimer.
  • Redistributions in binary form must reproduce the above copyright notice,
    this list of conditions and the following disclaimer in the documentation
    and/or other materials provided with the distribution.
  • Neither the name of the author nor the names of contributors may be used to
    endorse or promote products derived from this software without specific prior
    written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY
 DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

This is not the original version, but a modified one, converted from
'penner_easing_as1.txt' into C99 version by www.octaspire.com.
These modifications are released also under the BSD License:

Copyright © 2017 www.octaspire.com
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

  • Redistributions of source code must retain the above copyright notice,
    this list of conditions and the following disclaimer.
  • Redistributions in binary form must reproduce the above copyright notice,
    this list of conditions and the following disclaimer in the documentation
    and/or other materials provided with the distribution.
  • Neither the name of the author nor the names of contributors may be used to
    endorse or promote products derived from this software without specific prior
    written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY
 DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*******************************************************************************

  This file is amalgamated version of the header files, implementation files
  and unit tests of Octaspire Easing. It is created automatically by a script.

                            DO NOT EDIT MANUALLY!

  Edit the separate .h and .c files in the source distribution and then let
  the script create this file again with the modifications.

******************************************************************************/
#ifndef OCTASPIRE_EASING_AMALGAMATED_H
#define OCTASPIRE_EASING_AMALGAMATED_H

EnDoFmEsSaGe


# Write system includes
cat >> $FILE << EnDoFmEsSaGe
#include <math.h>

#define OCTASPIRE_EASING_CONFIG_TEST_RES_PATH ""

EnDoFmEsSaGe



concat_file() {
INFILE=$1
cat >> $FILE << EnDoFmEsSaGe
//////////////////////////////////////////////////////////////////////////////////////////////////
// START OF        $INFILE
//////////////////////////////////////////////////////////////////////////////////////////////////
EnDoFmEsSaGe
sed -n '/#include/!p' $INFILE >> $FILE
cat >> $FILE << EnDoFmEsSaGe
//////////////////////////////////////////////////////////////////////////////////////////////////
// END OF          $INFILE
//////////////////////////////////////////////////////////////////////////////////////////////////



EnDoFmEsSaGe
}



concat_config_file() {
INFILE=$1
cat >> $FILE << EnDoFmEsSaGe
//////////////////////////////////////////////////////////////////////////////////////////////////
// START OF        $INFILE
//////////////////////////////////////////////////////////////////////////////////////////////////
EnDoFmEsSaGe
sed -n '/#define OCTASPIRE_EASING_CONFIG_TEST_RES_PATH/!p' $INFILE >> $FILE
cat >> $FILE << EnDoFmEsSaGe
//////////////////////////////////////////////////////////////////////////////////////////////////
// END OF          $INFILE
//////////////////////////////////////////////////////////////////////////////////////////////////



EnDoFmEsSaGe
}




concat_file_literally() {
INFILE=$1
cat >> $FILE << EnDoFmEsSaGe
//////////////////////////////////////////////////////////////////////////////////////////////////
// START OF        $INFILE
//////////////////////////////////////////////////////////////////////////////////////////////////
EnDoFmEsSaGe
cat $INFILE >> $FILE
cat >> $FILE << EnDoFmEsSaGe
//////////////////////////////////////////////////////////////////////////////////////////////////
// END OF          $INFILE
//////////////////////////////////////////////////////////////////////////////////////////////////



EnDoFmEsSaGe
}





cat >> $FILE << EnDoFmEsSaGe
#ifdef OCTASPIRE_EASING_AMALGAMATED_UNIT_TEST_IMPLEMENTATION
#define OCTASPIRE_EASING_AMALGAMATED_IMPLEMENTATION
#endif


EnDoFmEsSaGe







concat_config_file "../build/include/octaspire/easing/octaspire_easing_config.h"
concat_file "../include/octaspire/easing/octaspire_easing.h"










cat >> $FILE << EnDoFmEsSaGe
#ifdef __cplusplus
extern "C" {
#endif

EnDoFmEsSaGe



# Write the bottom-part of the include guards
cat >> $FILE << EnDoFmEsSaGe
#ifdef __cplusplus
}
#endif

#endif

EnDoFmEsSaGe













# Write implementations
cat >> $FILE << EnDoFmEsSaGe







#ifdef OCTASPIRE_EASING_AMALGAMATED_IMPLEMENTATION

EnDoFmEsSaGe




concat_file "../src/octaspire_easing.c"




# Write implementations
cat >> $FILE << EnDoFmEsSaGe
#endif // OCTASPIRE_EASING_AMALGAMATED_IMPLEMENTATION

EnDoFmEsSaGe













# Write unit tests
cat >> $FILE << EnDoFmEsSaGe







#ifdef OCTASPIRE_EASING_AMALGAMATED_UNIT_TEST_IMPLEMENTATION

EnDoFmEsSaGe



concat_file_literally "../external/greatest.h"

concat_file "../test/test_easing.c"


cat >> $FILE << EnDoFmEsSaGe

GREATEST_MAIN_DEFS();

int main(int argc, char **argv)
{
    // This banner is created with figlet using font 'small'
    unsigned char octaspire_easing_amalgamated_version_banner[] = {
      0x20, 0x20, 0x5f, 0x5f, 0x5f, 0x20, 0x20, 0x20, 0x20, 0x20, 0x5f, 0x20,
      0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
      0x20, 0x20, 0x20, 0x5f, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
      0x20, 0x20, 0x20, 0x5f, 0x5f, 0x5f, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
      0x20, 0x20, 0x20, 0x5f, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
      0x20, 0x20, 0x20, 0x0a, 0x20, 0x2f, 0x20, 0x5f, 0x20, 0x5c, 0x20, 0x5f,
      0x5f, 0x7c, 0x20, 0x7c, 0x5f, 0x20, 0x5f, 0x5f, 0x20, 0x5f, 0x20, 0x5f,
      0x5f, 0x5f, 0x5f, 0x20, 0x5f, 0x5f, 0x28, 0x5f, 0x29, 0x5f, 0x20, 0x5f,
      0x20, 0x5f, 0x5f, 0x5f, 0x20, 0x20, 0x7c, 0x20, 0x5f, 0x5f, 0x7c, 0x5f,
      0x5f, 0x20, 0x5f, 0x20, 0x5f, 0x5f, 0x28, 0x5f, 0x29, 0x5f, 0x20, 0x5f,
      0x20, 0x20, 0x5f, 0x5f, 0x20, 0x5f, 0x20, 0x0a, 0x7c, 0x20, 0x28, 0x5f,
      0x29, 0x20, 0x2f, 0x20, 0x5f, 0x7c, 0x20, 0x20, 0x5f, 0x2f, 0x20, 0x5f,
      0x60, 0x20, 0x28, 0x5f, 0x2d, 0x3c, 0x20, 0x27, 0x5f, 0x20, 0x5c, 0x20,
      0x7c, 0x20, 0x27, 0x5f, 0x2f, 0x20, 0x2d, 0x5f, 0x29, 0x20, 0x7c, 0x20,
      0x5f, 0x7c, 0x2f, 0x20, 0x5f, 0x60, 0x20, 0x28, 0x5f, 0x2d, 0x3c, 0x20,
      0x7c, 0x20, 0x27, 0x20, 0x5c, 0x2f, 0x20, 0x5f, 0x60, 0x20, 0x7c, 0x0a,
      0x20, 0x5c, 0x5f, 0x5f, 0x5f, 0x2f, 0x5c, 0x5f, 0x5f, 0x7c, 0x5c, 0x5f,
      0x5f, 0x5c, 0x5f, 0x5f, 0x2c, 0x5f, 0x2f, 0x5f, 0x5f, 0x2f, 0x20, 0x2e,
      0x5f, 0x5f, 0x2f, 0x5f, 0x7c, 0x5f, 0x7c, 0x20, 0x5c, 0x5f, 0x5f, 0x5f,
      0x7c, 0x20, 0x7c, 0x5f, 0x5f, 0x5f, 0x5c, 0x5f, 0x5f, 0x2c, 0x5f, 0x2f,
      0x5f, 0x5f, 0x2f, 0x5f, 0x7c, 0x5f, 0x7c, 0x7c, 0x5f, 0x5c, 0x5f, 0x5f,
      0x2c, 0x20, 0x7c, 0x0a, 0x20, 0x20, 0x41, 0x6d, 0x61, 0x6c, 0x67, 0x61,
      0x6d, 0x61, 0x74, 0x65, 0x64, 0x20, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f,
      0x6e, 0x7c, 0x5f, 0x7c, 0x73, 0x74, 0x61, 0x6e, 0x64, 0x2d, 0x61, 0x6c,
      0x6f, 0x6e, 0x65, 0x20, 0x75, 0x6e, 0x69, 0x74, 0x20, 0x74, 0x65, 0x73,
      0x74, 0x20, 0x72, 0x75, 0x6e, 0x6e, 0x65, 0x72, 0x20, 0x20, 0x20, 0x20,
      0x20, 0x7c, 0x5f, 0x5f, 0x5f, 0x2f, 0x20, 0x0a, '\0'
    };

    printf(
        "%s  %s\n\n",
        octaspire_easing_amalgamated_version_banner,
        OCTASPIRE_EASING_CONFIG_VERSION_STR);

    GREATEST_MAIN_BEGIN();
    RUN_SUITE(octaspire_easing_suite);
    GREATEST_MAIN_END();
}


#endif // OCTASPIRE_EASING_AMALGAMATED_UNIT_TEST_IMPLEMENTATION

EnDoFmEsSaGe

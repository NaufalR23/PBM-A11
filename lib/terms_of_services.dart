import 'package:flutter/material.dart';

class termsOf extends StatelessWidget {
  final String pdfText = """TERMS OF SERVICE
Last updated June 18, 2022
1. AGREEMENT TO TERMS
These Terms of Use constitute a legally binding agreement made between you,
whether personally or on behalf of an entity (“you”) and LAUNDSHIRT ("Company,"
“we," “us," or “our”), concerning your access to and use of the laundshirt@gmail.com
website as well as any other media form, media channel, mobile website or mobile
application related, linked, or otherwise connected thereto (collectively, the “Site”).
We are registered in Indonesia and have our registered office at Jl. Kh. Achmad
Marzuki, Kab. Bangkalan, Prov. Jawa Timur 69115. You agree that by accessing the
Site, you have read, understood, and agreed to be bound by all of these Terms of
Use. IF YOU DO NOT AGREE WITH ALL OF THESE TERMS OF USE, THEN YOU
ARE EXPRESSLY PROHIBITED FROM USING THE SITE AND YOU MUST
DISCONTINUE USE IMMEDIATELY.
Supplemental terms and conditions or documents that may be posted on the Site
from time to time are hereby expressly incorporated herein by reference. We reserve
the right, in our sole discretion, to make changes or modifications to these Terms of
Use at any time and for any reason. We will alert you about any changes by updating
the “Last updated” date of these Terms of Use, and you waive any right to receive
specific notice of each such change. Please ensure that you check the applicable
Terms every time you use our Site so that you understand which Terms apply. You
will be subject to, and will be deemed to have been made aware of and to have
accepted, the changes in any revised Terms of Use by your continued use of the Site
after the date such revised Terms of Use are posted.
The information provided on the Site is not intended for distribution to or use by any
person or entity in any jurisdiction or country where such distribution or use would be
contrary to law or regulation or which would subject us to any registration
requirement within such jurisdiction or country. Accordingly, those persons who
choose to access the Site from other locations do so on their own initiative and are
solely responsible for compliance with local laws, if and to the extent local laws are
applicable.
All users who are minors in the jurisdiction in which they reside (generally under the
age of 18) must have the permission of, and be directly supervised by, their parent or
guardian to use the Site. If you are a minor, you must have your parent or guardian
read and agree to these Terms of Use prior to you using the Site.
2. INTELLECTUAL PROPERTY RIGHTS
Unless otherwise indicated, the Site is our proprietary property and all source code,
databases, functionality, software, website designs, audio, video, text, photographs,
and graphics on the Site (collectively, the “Content”) and the trademarks, service
marks, and logos contained therein (the “Marks”) are owned or controlled by us or
licensed to us, and are protected by copyright and trademark laws and various other
intellectual property rights and unfair competition laws of the United States,
international copyright laws, and international conventions. The Content and the
Marks are provided on the Site “AS IS” for your information and personal use only.
Except as expressly provided in these Terms of Use, no part of the Site and no
Content or Marks may be copied, reproduced, aggregated, republished, uploaded,
posted, publicly displayed, encoded, translated, transmitted, distributed, sold,
licensed, or otherwise exploited for any commercial purpose whatsoever, without our
express prior written permission.
Provided that you are eligible to use the Site, you are granted a limited license to
access and use the Site and to download or print a copy of any portion of the Content
to which you have properly gained access solely for your personal, non-commercial
use. We reserve all rights not expressly granted to you in and to the Site, the Content
and the Marks.
3. USER REPRESENTATIONS
By using the Site, you represent and warrant that: (1) all registration information you
submit will be true, accurate, current, and complete; (2) you will maintain the
accuracy of such information and promptly update such registration information as
necessary; (3) you have the legal capacity and you agree to comply with these Terms
of Use; (4) you are not a minor in the jurisdiction in which you reside, or if a minor,
you have received parental permission to use the Site; (5) you will not access the
Site through automated or non-human means, whether through a bot, script, or
otherwise; (6) you will not use the Site for any illegal or unauthorized purpose; and
(7) your use of the Site will not violate any applicable law or regulation.
If you provide any information that is untrue, inaccurate, not current, or incomplete,
we have the right to suspend or terminate your account and refuse any and all
current or future use of the Site (or any portion thereof).
4. USER REGISTRATION
You may be required to register with the Site. You agree to keep your password
confidential and will be responsible for all use of your account and password. We
reserve the right to remove, reclaim, or change a username you select if we
determine, in our sole discretion, that such username is inappropriate, obscene, or
otherwise objectionable.
5. PROHIBITED ACTIVITIES
You may not access or use the Site for any purpose other than that for which we
make the Site available. The Site may not be used in connection with any
commercial endeavors except those that are specifically endorsed or approved by
us.
As a user of the Site, you agree not to:
Systematically retrieve data or other content from the Site to create or compile,
directly or indirectly, a collection, compilation, database, or directory without
written permission from us.

23. CONTACT US
In order to resolve a complaint regarding the Site or to receive further information
regarding use of the Site, please contact us at:
LAUNDSHIRT
Jl. Kh. Achmad Marzuki
Kab. Bangkalan, Prov. Jawa Timur 69115
Indonesia
Phone: 08233112155
laundshirt@gmail.com

""";

  Widget build(BuildContext context) {
    return SafeArea(
        child: new Scaffold(
            appBar: new AppBar(
              title: const Text('Agreement'),
              actions: [
                new FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop('User Agreed');
                    },
                    child: new Text('AGREE',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(color: Colors.white))),
              ],
            ),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(pdfText),
              ),
            )));
  }
}

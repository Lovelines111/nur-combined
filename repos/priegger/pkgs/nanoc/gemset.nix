{
  addressable = {
    dependencies = [ "public_suffix" ];
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1fvchp2rhp2rmigx7qglf69xvjqvzq7x0g49naliw29r2bz656sy";
      type = "gem";
    };
    version = "2.7.0";
  };
  adsf = {
    dependencies = [ "rack" ];
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0vzy12c941xfhwc29zdl1hq3mqnbvh5l1i13ky0d658a79009f63";
      type = "gem";
    };
    version = "1.4.3";
  };
  colored = {
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0b0x5jmsyi0z69bm6sij1k89z7h0laag3cb4mdn7zkl9qmxb90lx";
      type = "gem";
    };
    version = "1.2";
  };
  concurrent-ruby = {
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "094387x4yasb797mv07cs3g6f08y56virc2rjcpb1k79rzaj3nhl";
      type = "gem";
    };
    version = "1.1.6";
  };
  cri = {
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1h45kw2s4bjwgbfsrncs30av0j4zjync3wmcc6lpdnzbcxs7yms2";
      type = "gem";
    };
    version = "2.15.10";
  };
  ddmemoize = {
    dependencies = [ "ddmetrics" "ref" ];
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "15ylhhfhd35zlr0wzcc069h0sishrfn27m0q54lf7ih092mccb6l";
      type = "gem";
    };
    version = "1.0.0";
  };
  ddmetrics = {
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0in0hk546q3js6qghbifjqvab6clyx5fjrwd3lcb0mk1ihmadyn2";
      type = "gem";
    };
    version = "1.0.1";
  };
  ddplugin = {
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "07vsrs2m4wcyqf6jba9prymchvbn1xis52g68953yk6dbv67s7f1";
      type = "gem";
    };
    version = "1.0.2";
  };
  diff-lcs = {
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "18w22bjz424gzafv6nzv98h0aqkwz3d9xhm7cbr1wfbyas8zayza";
      type = "gem";
    };
    version = "1.3";
  };
  equatable = {
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0fzx2ishipnp6c124ka6fiw5wk42s7c7gxid2c4c1mb55b30dglf";
      type = "gem";
    };
    version = "0.6.1";
  };
  hamster = {
    dependencies = [ "concurrent-ruby" ];
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1n1lsh96vnyc1pnzyd30f9prcsclmvmkdb3nm5aahnyizyiy6lar";
      type = "gem";
    };
    version = "3.0.0";
  };
  json_schema = {
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1d88bjxrqrpjn58rjvpz9kjpnnsrqi4zpjsrvx25sk1bd8shqy3k";
      type = "gem";
    };
    version = "0.20.8";
  };
  kramdown = {
    dependencies = [ "rexml" ];
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "059mk8lmddp2a2aa6s4pp7x2yyqbqg5crx5jkn32dzlnqi2j5cn6";
      type = "gem";
    };
    version = "2.2.1";
  };
  nanoc = {
    dependencies = [ "addressable" "colored" "nanoc-checking" "nanoc-cli" "nanoc-core" "nanoc-deploying" "parallel" "tty-command" "tty-which" ];
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "19sxljhiwiv19a10y0dbc06i0r5qf8k9cp85rj0m0w30l484q67y";
      type = "gem";
    };
    version = "4.11.16";
  };
  nanoc-checking = {
    dependencies = [ "nanoc-cli" "nanoc-core" ];
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "180imyanhf6qxdgbnzcb22hn90w68jzcliwlkj5wycb5a8pl493v";
      type = "gem";
    };
    version = "1.0.0";
  };
  nanoc-cli = {
    dependencies = [ "cri" "diff-lcs" "nanoc-core" "zeitwerk" ];
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "006nn2pax8dhyz6ksfwfgsnsa57qdr1afnfvm0n3pq261q3iz6hm";
      type = "gem";
    };
    version = "4.11.16";
  };
  nanoc-core = {
    dependencies = [ "ddmemoize" "ddmetrics" "ddplugin" "hamster" "json_schema" "slow_enumerator_tools" "tomlrb" "tty-platform" "zeitwerk" ];
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1cxf1wj48jq5l5vqwh9b1m5hqvyz9qhnpb2vgnb5gb6ks6pnayz7";
      type = "gem";
    };
    version = "4.11.16";
  };
  nanoc-deploying = {
    dependencies = [ "nanoc-checking" "nanoc-cli" "nanoc-core" ];
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "11vx5z1is74slb78qdzcd7b02d3b2axr8642pyj2wdih07qyk5zm";
      type = "gem";
    };
    version = "1.0.0";
  };
  parallel = {
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "12jijkap4akzdv11lm08dglsc8jmc87xcgq6947i1s3qb69f4zn2";
      type = "gem";
    };
    version = "1.19.1";
  };
  pastel = {
    dependencies = [ "equatable" "tty-color" ];
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0m43wk7gswwkl6lfxwlliqc9v1qp8arfygihyz91jc9icf270xzm";
      type = "gem";
    };
    version = "0.7.3";
  };
  public_suffix = {
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1l1kqw75asziwmzrig8rywxswxz8l91sc3pvns02ffsqac1a3wiz";
      type = "gem";
    };
    version = "4.0.4";
  };
  rack = {
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "10mp9s48ssnw004aksq90gvhdvwczh8j6q82q2kqiqq92jd1zxbp";
      type = "gem";
    };
    version = "2.2.2";
  };
  ref = {
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "04p4pq4sikly7pvn30dc7v5x2m7fqbfwijci4z1y6a1ilwxzrjii";
      type = "gem";
    };
    version = "2.0.0";
  };
  rexml = {
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1mkvkcw9fhpaizrhca0pdgjcrbns48rlz4g6lavl5gjjq3rk2sq3";
      type = "gem";
    };
    version = "3.2.4";
  };
  slow_enumerator_tools = {
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0phfj4jxymxf344cgksqahsgy83wfrwrlr913mrsq2c33j7mj6p6";
      type = "gem";
    };
    version = "1.1.0";
  };
  tomlrb = {
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "00x5y9h4fbvrv4xrjk4cqlkm4vq8gv73ax4alj3ac2x77zsnnrk8";
      type = "gem";
    };
    version = "1.3.0";
  };
  tty-color = {
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "0czbnp19cfnf5zwdd22payhqjv57mgi3gj5n726s20vyq3br6bsp";
      type = "gem";
    };
    version = "0.5.1";
  };
  tty-command = {
    dependencies = [ "pastel" ];
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1cqqy9pn1b9j1mbkxwxwk7hlk2jh0lzsi9qr19p4hc0r1axcndjk";
      type = "gem";
    };
    version = "0.9.0";
  };
  tty-platform = {
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "02h58a8yg2kzybhqqrhh4lfdl9nm0i62nd9jrvwinjp802qkffg2";
      type = "gem";
    };
    version = "0.3.0";
  };
  tty-which = {
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1ki331s870p7j8yi58q8ig0gwy9kfgmjlq1jqs11h12mcm0mzi0a";
      type = "gem";
    };
    version = "0.4.2";
  };
  zeitwerk = {
    groups = [ "default" ];
    platforms = [];
    source = {
      remotes = [ "https://rubygems.org" ];
      sha256 = "1akpm3pwvyiack2zk6giv9yn3cqb8pw6g40p4394pdc3xmy3s4k0";
      type = "gem";
    };
    version = "2.3.0";
  };
}

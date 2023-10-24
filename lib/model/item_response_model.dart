class ItemResponseModel {
  String? abstract;
  String? abstractSource;
  String? abstractText;
  String? abstractURL;
  String? answer;
  String? answerType;
  String? definition;
  String? definitionSource;
  String? definitionURL;
  String? entity;
  String? heading;
  String? image;
  int? imageHeight;
  int? imageIsLogo;
  int? imageWidth;
  String? infobox;
  String? redirect;
  List<RelatedTopics>? relatedTopics;
  List? results;
  String? type;
  Meta? meta;
  String? serverError;

  ItemResponseModel(
      {this.abstract,
      this.abstractSource,
      this.abstractText,
      this.abstractURL,
      this.answer,
      this.answerType,
      this.definition,
      this.definitionSource,
      this.definitionURL,
      this.entity,
      this.heading,
      this.image,
      this.imageHeight,
      this.imageIsLogo,
      this.imageWidth,
      this.infobox,
      this.redirect,
      this.relatedTopics,
      this.results,
      this.type,
      this.serverError,
      this.meta});

  ItemResponseModel.fromJson(Map<String, dynamic> json) {
    abstract = json['Abstract'];
    abstractSource = json['AbstractSource'];
    abstractText = json['AbstractText'];
    abstractURL = json['AbstractURL'];
    answer = json['Answer'];
    answerType = json['AnswerType'];
    definition = json['Definition'];
    definitionSource = json['DefinitionSource'];
    definitionURL = json['DefinitionURL'];
    entity = json['Entity'];
    heading = json['Heading'];
    image = json['Image'];
    imageHeight = json['ImageHeight'];
    imageIsLogo = json['ImageIsLogo'];
    imageWidth = json['ImageWidth'];
    infobox = json['Infobox'];
    redirect = json['Redirect'];
    if (json['RelatedTopics'] != null) {
      relatedTopics = <RelatedTopics>[];
      json['RelatedTopics'].forEach((v) {
        relatedTopics!.add(RelatedTopics.fromJson(v));
      });
    }
    if (json['Results'] != null) {
      results = [];
      json['Results'].forEach((v) {
        results!.add(v);
      });
    }
    type = json['Type'];
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Abstract'] = abstract;
    data['AbstractSource'] = abstractSource;
    data['AbstractText'] = abstractText;
    data['AbstractURL'] = abstractURL;
    data['Answer'] = answer;
    data['AnswerType'] = answerType;
    data['Definition'] = definition;
    data['DefinitionSource'] = definitionSource;
    data['DefinitionURL'] = definitionURL;
    data['Entity'] = entity;
    data['Heading'] = heading;
    data['Image'] = image;
    data['ImageHeight'] = imageHeight;
    data['ImageIsLogo'] = imageIsLogo;
    data['ImageWidth'] = imageWidth;
    data['Infobox'] = infobox;
    data['Redirect'] = redirect;
    if (relatedTopics != null) {
      data['RelatedTopics'] = relatedTopics!.map((v) => v.toJson()).toList();
    }
    if (results != null) {
      data['Results'] = results!.map((v) => v.toJson()).toList();
    }
    data['Type'] = type;
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    return data;
  }

  factory ItemResponseModel.withError(String serverError) =>
      ItemResponseModel(serverError: serverError);
}

class RelatedTopics {
  String? firstURL;
  Icon? icon;
  String? result;
  String? text;

  RelatedTopics({this.firstURL, this.icon, this.result, this.text});

  RelatedTopics.fromJson(Map<String, dynamic> json) {
    firstURL = json['FirstURL'];
    icon = json['Icon'] != null ? Icon.fromJson(json['Icon']) : null;
    result = json['Result'];
    text = json['Text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['FirstURL'] = firstURL;
    if (icon != null) {
      data['Icon'] = icon!.toJson();
    }
    data['Result'] = result;
    data['Text'] = text;
    return data;
  }
}

class Icon {
  String? height;
  String? uRL;
  String? width;

  Icon({this.height, this.uRL, this.width});

  Icon.fromJson(Map<String, dynamic> json) {
    height = json['Height'];
    uRL = json['URL'];
    width = json['Width'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Height'] = height;
    data['URL'] = uRL;
    data['Width'] = width;
    return data;
  }
}

class Meta {
  String? attribution;
  String? blockgroup;
  String? createdDate;
  String? description;
  String? designer;
  String? devDate;
  String? devMilestone;
  List<Developer>? developer;
  String? exampleQuery;
  String? id;
  String? isStackexchange;
  String? jsCallbackName;
  String? liveDate;
  Maintainer? maintainer;
  String? name;
  String? perlModule;
  String? producer;
  String? productionState;
  String? repo;
  String? signalFrom;
  String? srcDomain;
  int? srcId;
  String? srcName;
  SrcOptions? srcOptions;
  String? srcUrl;
  String? status;
  String? tab;
  List<String>? topic;
  int? unsafe;

  Meta(
      {this.attribution,
      this.blockgroup,
      this.createdDate,
      this.description,
      this.designer,
      this.devDate,
      this.devMilestone,
      this.developer,
      this.exampleQuery,
      this.id,
      this.isStackexchange,
      this.jsCallbackName,
      this.liveDate,
      this.maintainer,
      this.name,
      this.perlModule,
      this.producer,
      this.productionState,
      this.repo,
      this.signalFrom,
      this.srcDomain,
      this.srcId,
      this.srcName,
      this.srcOptions,
      this.srcUrl,
      this.status,
      this.tab,
      this.topic,
      this.unsafe});

  Meta.fromJson(Map<String, dynamic> json) {
    attribution = json['attribution'];
    blockgroup = json['blockgroup'];
    createdDate = json['created_date'];
    description = json['description'];
    designer = json['designer'];
    devDate = json['dev_date'];
    devMilestone = json['dev_milestone'];
    if (json['developer'] != null) {
      developer = <Developer>[];
      json['developer'].forEach((v) {
        developer!.add(Developer.fromJson(v));
      });
    }
    exampleQuery = json['example_query'];
    id = json['id'];
    isStackexchange = json['is_stackexchange'];
    jsCallbackName = json['js_callback_name'];
    liveDate = json['live_date'];
    maintainer = json['maintainer'] != null
        ? Maintainer.fromJson(json['maintainer'])
        : null;
    name = json['name'];
    perlModule = json['perl_module'];
    producer = json['producer'];
    productionState = json['production_state'];
    repo = json['repo'];
    signalFrom = json['signal_from'];
    srcDomain = json['src_domain'];
    srcId = json['src_id'];
    srcName = json['src_name'];
    srcOptions = json['src_options'] != null
        ? SrcOptions.fromJson(json['src_options'])
        : null;
    srcUrl = json['src_url'];
    status = json['status'];
    tab = json['tab'];
    topic = json['topic'].cast<String>();
    unsafe = json['unsafe'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['attribution'] = attribution;
    data['blockgroup'] = blockgroup;
    data['created_date'] = createdDate;
    data['description'] = description;
    data['designer'] = designer;
    data['dev_date'] = devDate;
    data['dev_milestone'] = devMilestone;
    if (developer != null) {
      data['developer'] = developer!.map((v) => v.toJson()).toList();
    }
    data['example_query'] = exampleQuery;
    data['id'] = id;
    data['is_stackexchange'] = isStackexchange;
    data['js_callback_name'] = jsCallbackName;
    data['live_date'] = liveDate;
    if (maintainer != null) {
      data['maintainer'] = maintainer!.toJson();
    }
    data['name'] = name;
    data['perl_module'] = perlModule;
    data['producer'] = producer;
    data['production_state'] = productionState;
    data['repo'] = repo;
    data['signal_from'] = signalFrom;
    data['src_domain'] = srcDomain;
    data['src_id'] = srcId;
    data['src_name'] = srcName;
    if (srcOptions != null) {
      data['src_options'] = srcOptions!.toJson();
    }
    data['src_url'] = srcUrl;
    data['status'] = status;
    data['tab'] = tab;
    data['topic'] = topic;
    data['unsafe'] = unsafe;
    return data;
  }
}

class Developer {
  String? name;
  String? type;
  String? url;

  Developer({this.name, this.type, this.url});

  Developer.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['type'] = type;
    data['url'] = url;
    return data;
  }
}

class Maintainer {
  String? github;

  Maintainer({this.github});

  Maintainer.fromJson(Map<String, dynamic> json) {
    github = json['github'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['github'] = github;
    return data;
  }
}

class SrcOptions {
  String? directory;
  int? isFanon;
  int? isMediawiki;
  int? isWikipedia;
  String? language;
  String? minAbstractLength;
  int? skipAbstract;
  int? skipAbstractParen;
  String? skipEnd;
  int? skipIcon;
  int? skipImageName;
  String? skipQr;
  String? sourceSkip;
  String? srcInfo;

  SrcOptions(
      {this.directory,
      this.isFanon,
      this.isMediawiki,
      this.isWikipedia,
      this.language,
      this.minAbstractLength,
      this.skipAbstract,
      this.skipAbstractParen,
      this.skipEnd,
      this.skipIcon,
      this.skipImageName,
      this.skipQr,
      this.sourceSkip,
      this.srcInfo});

  SrcOptions.fromJson(Map<String, dynamic> json) {
    directory = json['directory'];
    isFanon = json['is_fanon'];
    isMediawiki = json['is_mediawiki'];
    isWikipedia = json['is_wikipedia'];
    language = json['language'];
    minAbstractLength = json['min_abstract_length'];
    skipAbstract = json['skip_abstract'];
    skipAbstractParen = json['skip_abstract_paren'];
    skipEnd = json['skip_end'];
    skipIcon = json['skip_icon'];
    skipImageName = json['skip_image_name'];
    skipQr = json['skip_qr'];
    sourceSkip = json['source_skip'];
    srcInfo = json['src_info'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['directory'] = directory;
    data['is_fanon'] = isFanon;
    data['is_mediawiki'] = isMediawiki;
    data['is_wikipedia'] = isWikipedia;
    data['language'] = language;
    data['min_abstract_length'] = minAbstractLength;
    data['skip_abstract'] = skipAbstract;
    data['skip_abstract_paren'] = skipAbstractParen;
    data['skip_end'] = skipEnd;
    data['skip_icon'] = skipIcon;
    data['skip_image_name'] = skipImageName;
    data['skip_qr'] = skipQr;
    data['source_skip'] = sourceSkip;
    data['src_info'] = srcInfo;
    return data;
  }
}

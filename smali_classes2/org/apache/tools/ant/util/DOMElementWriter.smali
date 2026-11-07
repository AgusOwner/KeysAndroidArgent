.class public Lorg/apache/tools/ant/util/DOMElementWriter;
.super Ljava/lang/Object;
.source "DOMElementWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;
    }
.end annotation


# static fields
.field private static final HEX:I = 0x10

.field private static final NS:Ljava/lang/String; = "ns"

.field private static final WS_ENTITIES:[Ljava/lang/String;


# instance fields
.field protected knownEntities:[Ljava/lang/String;

.field private namespacePolicy:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

.field private nextPrefix:I

.field private nsPrefixMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nsURIByElement:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/w3c/dom/Element;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private xmlDeclaration:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 52
    sput-object v0, Lorg/apache/tools/ant/util/DOMElementWriter;->WS_ENTITIES:[Ljava/lang/String;

    const/16 v0, 0x9

    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 55
    sget-object v1, Lorg/apache/tools/ant/util/DOMElementWriter;->WS_ENTITIES:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "&#x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->xmlDeclaration:Z

    .line 68
    sget-object v0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->IGNORE:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    iput-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->namespacePolicy:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nextPrefix:I

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsURIByElement:Ljava/util/Map;

    const-string v0, "apos"

    const-string v1, "quot"

    const-string v2, "gt"

    const-string v3, "amp"

    const-string v4, "lt"

    .line 160
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->knownEntities:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 138
    sget-object v0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->IGNORE:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/util/DOMElementWriter;-><init>(ZLorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;)V

    return-void
.end method

.method public constructor <init>(ZLorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;)V
    .locals 5

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->xmlDeclaration:Z

    .line 68
    sget-object v0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->IGNORE:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    iput-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->namespacePolicy:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nextPrefix:I

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsURIByElement:Ljava/util/Map;

    const-string v0, "apos"

    const-string v1, "quot"

    const-string v2, "gt"

    const-string v3, "amp"

    const-string v4, "lt"

    .line 160
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->knownEntities:[Ljava/lang/String;

    .line 151
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->xmlDeclaration:Z

    .line 152
    iput-object p2, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->namespacePolicy:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    return-void
.end method

.method private addNSDefinition(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 2

    .line 631
    iget-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsURIByElement:Ljava/util/Map;

    new-instance v1, Lorg/apache/tools/ant/util/DOMElementWriter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/DOMElementWriter$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 632
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private encode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 435
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_8

    aget-char v4, p1, v3

    const/16 v5, 0x9

    if-eq v4, v5, :cond_5

    const/16 v5, 0xa

    if-eq v4, v5, :cond_5

    const/16 v5, 0xd

    if-eq v4, v5, :cond_5

    const/16 v5, 0x22

    if-eq v4, v5, :cond_4

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_3

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_2

    const/16 v5, 0x26

    if-eq v4, v5, :cond_1

    const/16 v5, 0x27

    if-eq v4, v5, :cond_0

    .line 462
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/util/DOMElementWriter;->isLegalCharacter(C)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 463
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v4, "&apos;"

    .line 444
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v4, "&amp;"

    .line 450
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v4, "&gt;"

    .line 441
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v4, "&lt;"

    .line 438
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v4, "&quot;"

    .line 447
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 456
    sget-object v5, Lorg/apache/tools/ant/util/DOMElementWriter;->WS_ENTITIES:[Ljava/lang/String;

    add-int/lit8 v4, v4, -0x9

    aget-object v4, v5, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 458
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 468
    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getNamespaceURI(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 0

    .line 636
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static isLegalXmlCharacter(C)Z
    .locals 3

    const/16 v0, 0x9

    const/4 v1, 0x1

    if-eq p0, v0, :cond_5

    const/16 v0, 0xa

    if-eq p0, v0, :cond_5

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    const/4 v2, 0x0

    if-ge p0, v0, :cond_1

    return v2

    :cond_1
    const v0, 0xd7ff

    if-gt p0, v0, :cond_2

    return v1

    :cond_2
    const v0, 0xe000

    if-ge p0, v0, :cond_3

    return v2

    :cond_3
    const v0, 0xfffd

    if-gt p0, v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :cond_5
    :goto_0
    return v1
.end method

.method static synthetic lambda$addNSDefinition$0(Lorg/w3c/dom/Element;)Ljava/util/List;
    .locals 0

    .line 631
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private removeNSDefinitions(Lorg/w3c/dom/Element;)V
    .locals 3

    .line 623
    iget-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsURIByElement:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 625
    iget-object v1, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/tools/ant/util/DOMElementWriter$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/util/DOMElementWriter$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 626
    iget-object v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsURIByElement:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public closeElement(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p5, v0

    :goto_0
    if-ge p5, p3, :cond_0

    .line 392
    invoke-virtual {p2, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    const-string p3, "</"

    .line 397
    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 398
    iget-object p3, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->namespacePolicy:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    invoke-static {p3}, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->access$000(Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 399
    invoke-static {p1}, Lorg/apache/tools/ant/util/DOMElementWriter;->getNamespaceURI(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p3

    .line 400
    iget-object p4, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 401
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    .line 402
    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p3, ":"

    .line 403
    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 405
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/DOMElementWriter;->removeNSDefinitions(Lorg/w3c/dom/Element;)V

    .line 407
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, ">%n"

    new-array p3, v0, [Ljava/lang/Object;

    .line 408
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 419
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/util/DOMElementWriter;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 430
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/util/DOMElementWriter;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodedata(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 487
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 489
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/util/DOMElementWriter;->encodedata(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 491
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public encodedata(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "]]>"

    .line 516
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    if-gez v2, :cond_0

    move v4, v0

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    if-ge v3, v4, :cond_2

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_1

    .line 524
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v6}, Lorg/apache/tools/ant/util/DOMElementWriter;->isLegalCharacter(C)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    sub-int v6, v5, v3

    .line 527
    invoke-virtual {p1, p2, v3, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    add-int/lit8 v3, v5, 0x1

    goto :goto_1

    :cond_2
    if-ltz v2, :cond_3

    const-string v3, "]]]]><![CDATA[>"

    .line 532
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x3

    .line 534
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    return-void
.end method

.method public isLegalCharacter(C)Z
    .locals 0

    .line 591
    invoke-static {p1}, Lorg/apache/tools/ant/util/DOMElementWriter;->isLegalXmlCharacter(C)Z

    move-result p1

    return p1
.end method

.method public isReference(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 547
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x26

    if-ne v1, v2, :cond_4

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 551
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    .line 552
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x78

    if-ne v3, v4, :cond_1

    .line 555
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    return v0

    .line 563
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    return v0

    .line 571
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 572
    iget-object v2, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->knownEntities:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 573
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public openElement(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 280
    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/util/DOMElementWriter;->openElement(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;Z)V

    return-void
.end method

.method public openElement(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_0

    .line 301
    invoke-virtual {p2, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p3, "<"

    .line 305
    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 306
    iget-object p3, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->namespacePolicy:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    invoke-static {p3}, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->access$000(Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;)Z

    move-result p3

    const-string p4, "ns"

    const-string v1, ":"

    if-eqz p3, :cond_3

    .line 307
    invoke-static {p1}, Lorg/apache/tools/ant/util/DOMElementWriter;->getNamespaceURI(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p3

    .line 308
    iget-object v2, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    .line 310
    iget-object v2, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    goto :goto_1

    .line 314
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nextPrefix:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nextPrefix:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    :goto_1
    iget-object v3, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    invoke-interface {v3, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-direct {p0, p1, p3}, Lorg/apache/tools/ant/util/DOMElementWriter;->addNSDefinition(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 319
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    .line 320
    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 324
    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 327
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p3

    move v2, v0

    .line 328
    :goto_2
    invoke-interface {p3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    const-string v4, "\""

    const-string v5, "=\""

    if-ge v2, v3, :cond_6

    .line 329
    invoke-interface {p3, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Attr;

    const-string v6, " "

    .line 330
    invoke-virtual {p2, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 331
    iget-object v6, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->namespacePolicy:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    invoke-static {v6}, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->access$100(Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 332
    invoke-static {v3}, Lorg/apache/tools/ant/util/DOMElementWriter;->getNamespaceURI(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 333
    iget-object v7, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_4

    .line 335
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nextPrefix:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nextPrefix:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 336
    iget-object v8, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-direct {p0, p1, v6}, Lorg/apache/tools/ant/util/DOMElementWriter;->addNSDefinition(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 339
    :cond_4
    invoke-virtual {p2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 342
    :cond_5
    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 344
    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/util/DOMElementWriter;->encodeAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 349
    :cond_6
    iget-object p3, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsURIByElement:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_8

    .line 351
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 352
    iget-object v2, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->nsPrefixMap:Ljava/util/Map;

    invoke-interface {v2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, " xmlns"

    .line 353
    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 355
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 358
    :cond_7
    invoke-virtual {p2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    if-eqz p5, :cond_9

    const-string p1, ">"

    .line 365
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_4

    .line 367
    :cond_9
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/DOMElementWriter;->removeNSDefinitions(Lorg/w3c/dom/Element;)V

    const-string p1, " />%n"

    new-array p3, v0, [Ljava/lang/Object;

    .line 368
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    :goto_4
    return-void
.end method

.method public write(Lorg/w3c/dom/Element;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 175
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/DOMElementWriter;->writeXMLDeclaration(Ljava/io/Writer;)V

    const/4 p2, 0x0

    const-string v1, "  "

    .line 176
    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/tools/ant/util/DOMElementWriter;->write(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    move v9, v1

    .line 210
    invoke-virtual/range {v4 .. v9}, Lorg/apache/tools/ant/util/DOMElementWriter;->openElement(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;Z)V

    if-eqz v1, :cond_a

    move v9, v2

    .line 213
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v2, v1, :cond_9

    .line 214
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 216
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-eq v4, v3, :cond_7

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    const/4 v5, 0x4

    if-eq v4, v5, :cond_5

    const/4 v5, 0x5

    if-eq v4, v5, :cond_4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_2

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v4, "<!--"

    .line 231
    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 232
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/util/DOMElementWriter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "-->"

    .line 233
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v4, "<?"

    .line 249
    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 250
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 251
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 252
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x20

    .line 253
    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(I)V

    .line 254
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_3
    const-string v1, "?>"

    .line 256
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/16 v4, 0x26

    .line 243
    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(I)V

    .line 244
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0x3b

    .line 245
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    :cond_5
    const-string v4, "<![CDATA["

    .line 237
    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 238
    check-cast v1, Lorg/w3c/dom/Text;

    invoke-interface {v1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lorg/apache/tools/ant/util/DOMElementWriter;->encodedata(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v1, "]]>"

    .line 239
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 227
    :cond_6
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/util/DOMElementWriter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    if-nez v2, :cond_8

    .line 221
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 223
    :cond_8
    check-cast v1, Lorg/w3c/dom/Element;

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p0, v1, p2, v4, p4}, Lorg/apache/tools/ant/util/DOMElementWriter;->write(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;)V

    move v9, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_9
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    .line 262
    invoke-virtual/range {v4 .. v9}, Lorg/apache/tools/ant/util/DOMElementWriter;->closeElement(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;Z)V

    :cond_a
    return-void
.end method

.method public writeXMLDeclaration(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/DOMElementWriter;->xmlDeclaration:Z

    if-eqz v0, :cond_0

    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    .line 188
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.class public Lorg/apache/tools/ant/util/LayoutPreservingProperties;
.super Ljava/util/Properties;
.source "LayoutPreservingProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;,
        Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;,
        Lorg/apache/tools/ant/util/LayoutPreservingProperties$Blank;,
        Lorg/apache/tools/ant/util/LayoutPreservingProperties$Comment;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private eol:Ljava/lang/String;

.field private keyedPairLines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private logicalLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;",
            ">;"
        }
    .end annotation
.end field

.field private removeComments:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 86
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 86
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    .line 98
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    return-void
.end method

.method private escape(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 542
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    .line 543
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 p1, 0x1

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_7

    .line 548
    aget-char v5, v1, v4

    const-string v6, "\\"

    const/16 v7, 0x20

    if-ne v5, v7, :cond_2

    if-nez p2, :cond_1

    if-eqz p1, :cond_3

    .line 551
    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move p1, v3

    :cond_3
    :goto_1
    const-string v8, "\t\u000c\r\n\\:=#!"

    .line 556
    invoke-virtual {v8, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    .line 558
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v8, 0x1

    const-string v7, "tfrn\\:=#!"

    invoke-virtual {v5, v7, v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    if-lt v5, v7, :cond_6

    const/16 v6, 0x7e

    if-le v5, v6, :cond_5

    goto :goto_2

    .line 562
    :cond_5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 560
    :cond_6
    :goto_2
    invoke-direct {p0, v5}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->escapeUnicode(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 565
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private escapeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 524
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->escape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private escapeUnicode(C)Ljava/lang/String;
    .locals 2

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/tools/ant/util/UnicodeUtil;->EscapeUnicode(C)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private escapeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 511
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->escape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private innerSetProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 180
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->escapeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 182
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 184
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    .line 185
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->escapeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 188
    new-instance v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    invoke-direct {v0, p1, p2}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 189
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->setNew(Z)V

    .line 190
    iget-object p2, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object p1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private readFirstLine(Ljava/io/PushbackReader;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 390
    invoke-virtual {p1}, Ljava/io/PushbackReader;->read()I

    move-result v1

    .line 394
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_4

    const/16 v3, 0xa

    if-eqz v2, :cond_0

    if-eq v1, v3, :cond_0

    .line 399
    invoke-virtual {p1, v1}, Ljava/io/PushbackReader;->unread(I)V

    goto :goto_3

    :cond_0
    const/16 v4, 0xd

    if-ne v1, v4, :cond_1

    const-string v1, "\r"

    .line 404
    iput-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    const/4 v1, 0x1

    move v2, v1

    goto :goto_2

    :cond_1
    if-ne v1, v3, :cond_3

    if-eqz v2, :cond_2

    const-string p1, "\r\n"

    goto :goto_1

    :cond_2
    const-string p1, "\n"

    .line 407
    :goto_1
    iput-object p1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    goto :goto_3

    :cond_3
    int-to-char v1, v1

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    :goto_2
    invoke-virtual {p1}, Ljava/io/PushbackReader;->read()I

    move-result v1

    goto :goto_0

    .line 414
    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readLines(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 320
    new-instance p1, Ljava/io/PushbackReader;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    .line 322
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Blank;

    invoke-direct {v1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Blank;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->readFirstLine(Ljava/io/PushbackReader;)Ljava/lang/String;

    move-result-object v0

    .line 328
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 332
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-eqz v0, :cond_7

    .line 335
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_1

    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v5, "^[ \t\u000c]*[#!].*"

    .line 342
    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    :goto_1
    if-nez v5, :cond_2

    .line 348
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->requiresContinuation(Ljava/lang/String;)Z

    move-result v4

    .line 351
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_6

    if-eqz v5, :cond_3

    .line 356
    new-instance v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Comment;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p0, v6}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Comment;-><init>(Lorg/apache/tools/ant/util/LayoutPreservingProperties;Ljava/lang/String;)V

    goto :goto_2

    .line 357
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 358
    new-instance v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Blank;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Blank;-><init>()V

    goto :goto_2

    .line 360
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;-><init>(Ljava/lang/String;)V

    .line 361
    move-object v6, v0

    check-cast v6, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 362
    iget-object v7, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 365
    invoke-virtual {p0, v6}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_5
    iget-object v7, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    iget-object v8, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :goto_2
    iget-object v6, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 372
    :cond_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 374
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private removeCommentsEndingAt(I)V
    .locals 3

    add-int/lit8 p1, p1, -0x1

    move v0, p1

    :goto_0
    if-lez v0, :cond_1

    .line 596
    iget-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Blank;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 603
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Comment;

    if-nez v1, :cond_2

    return-void

    :cond_2
    :goto_2
    if-ltz v0, :cond_4

    .line 609
    iget-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Comment;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    if-gt v0, p1, :cond_5

    .line 616
    iget-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    return-void
.end method

.method private requiresContinuation(Ljava/lang/String;)Z
    .locals 4

    .line 426
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 427
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    .line 428
    aget-char v2, p1, v0

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 432
    :cond_0
    array-length p1, p1

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    .line 433
    rem-int/lit8 p1, p1, 0x2

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 456
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [C

    .line 457
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 458
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xa

    aput-char v4, v1, v2

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    if-ge v3, v0, :cond_7

    .line 461
    aget-char p1, v1, v3

    if-ne p1, v4, :cond_0

    goto :goto_2

    :cond_0
    const/16 v5, 0x5c

    if-ne p1, v5, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 468
    aget-char p1, v1, v3

    const/16 v5, 0x6e

    if-ne p1, v5, :cond_1

    .line 470
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v5, 0x72

    if-ne p1, v5, :cond_2

    const/16 p1, 0xd

    .line 472
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v5, 0x66

    if-ne p1, v5, :cond_3

    const/16 p1, 0xc

    .line 474
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 v5, 0x74

    if-ne p1, v5, :cond_4

    const/16 p1, 0x9

    .line 476
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v5, 0x75

    if-ne p1, v5, :cond_5

    add-int/lit8 p1, v3, 0x1

    .line 479
    invoke-direct {p0, v1, p1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->unescapeUnicode([CI)C

    move-result p1

    add-int/lit8 v3, v3, 0x4

    .line 481
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 483
    :cond_5
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 486
    :cond_6
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 489
    :cond_7
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private unescapeUnicode([CI)C
    .locals 2

    .line 499
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, v1}, Ljava/lang/String;-><init>([CII)V

    const/16 p1, 0x10

    .line 500
    invoke-static {v0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-char p1, p1

    return p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 197
    invoke-super {p0}, Ljava/util/Properties;->clear()V

    .line 198
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 199
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .line 218
    invoke-super {p0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;

    .line 219
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    .line 221
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 223
    iget-object v3, v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;

    .line 224
    instance-of v4, v3, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    if-eqz v4, :cond_0

    .line 225
    check-cast v3, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    .line 226
    iget-object v4, v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-virtual {v3}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isRemoveComments()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->removeComments:Z

    return v0
.end method

.method public listLines(Ljava/io/PrintStream;)V
    .locals 5

    const-string v0, "-- logical lines --"

    .line 239
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;

    .line 241
    instance-of v2, v1, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Blank;

    const-string v3, "\""

    if-eqz v2, :cond_1

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "blank:   \""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_1
    instance-of v2, v1, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Comment;

    if-eqz v2, :cond_2

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "comment: \""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_2
    instance-of v2, v1, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    if-eqz v2, :cond_0

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "pair:    \""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->readLines(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 149
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 150
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 151
    invoke-super {p0, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 156
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->innerSetProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 204
    invoke-super {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->keyedPairLines:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 207
    iget-boolean v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->removeComments:Z

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->removeCommentsEndingAt(I)V

    .line 210
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public saveAs(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 165
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 167
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->innerSetProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setRemoveComments(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->removeComments:Z

    return-void
.end method

.method public store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 267
    iget-object p1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v1, "#"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    if-lez p1, :cond_0

    .line 271
    iget-object v4, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    .line 272
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Comment;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    .line 273
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;

    invoke-virtual {v4}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    if-le p1, p2, :cond_1

    .line 281
    iget-object v4, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    .line 282
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Comment;

    if-eqz v4, :cond_1

    .line 284
    :try_start_0
    iget-object v4, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    .line 285
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;

    .line 286
    invoke-virtual {v4}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 284
    invoke-static {v4}, Lorg/apache/tools/ant/util/DateUtils;->parseDateFromHeader(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    .line 292
    :catch_0
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/tools/ant/util/DateUtils;->getDateForHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->logicalLines:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;

    .line 296
    instance-of v1, p2, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    if-eqz v1, :cond_4

    .line 297
    move-object v1, p2

    check-cast v1, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;

    invoke-virtual {v1}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$Pair;->isNew()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v3, :cond_3

    .line 299
    iget-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move v3, v2

    .line 303
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_2

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/tools/ant/util/LayoutPreservingProperties$LogicalLine;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;->eol:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :cond_5
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    return-void
.end method

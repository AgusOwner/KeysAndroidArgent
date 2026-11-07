.class public final Lorg/apache/tools/ant/types/selectors/SelectorUtils;
.super Ljava/lang/Object;
.source "SelectorUtils.java"


# static fields
.field public static final DEEP_TREE_MATCH:Ljava/lang/String; = "**"

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final instance:Lorg/apache/tools/ant/types/selectors/SelectorUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lorg/apache/tools/ant/types/selectors/SelectorUtils;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->instance:Lorg/apache/tools/ant/types/selectors/SelectorUtils;

    .line 47
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allStars([CII)Z
    .locals 2

    :goto_0
    if-gt p1, p2, :cond_1

    .line 466
    aget-char v0, p0, p1

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static different(ZCC)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 477
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public static getInstance()Lorg/apache/tools/ant/types/selectors/SelectorUtils;
    .locals 1

    .line 60
    sget-object v0, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->instance:Lorg/apache/tools/ant/types/selectors/SelectorUtils;

    return-object v0
.end method

.method public static hasWildcards(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "*"

    .line 652
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isOutOfDate(Ljava/io/File;Ljava/io/File;I)Z
    .locals 4

    .line 581
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    int-to-long v2, p2

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOutOfDate(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;I)Z
    .locals 2

    int-to-long v0, p2

    .line 601
    invoke-static {p0, p1, v0, v1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->isOutOfDate(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;J)Z

    move-result p0

    return p0
.end method

.method public static isOutOfDate(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/types/Resource;J)Z
    .locals 5

    .line 619
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v0

    .line 620
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v2

    .line 621
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 p0, 0x0

    cmp-long v4, v0, p0

    if-eqz v4, :cond_0

    cmp-long p0, v2, p0

    if-eqz p0, :cond_0

    sub-long/2addr v0, p2

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 327
    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 17

    move/from16 v0, p2

    .line 349
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 350
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 352
    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 354
    array-length v5, v2

    sub-int/2addr v5, v4

    .line 357
    array-length v6, v1

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/16 v9, 0x2a

    if-ge v8, v6, :cond_1

    aget-char v10, v1, v8

    if-ne v10, v9, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_1
    const/16 v8, 0x3f

    if-nez v6, :cond_5

    if-eq v3, v5, :cond_2

    return v7

    :cond_2
    move v5, v7

    :goto_2
    if-gt v5, v3, :cond_4

    .line 370
    aget-char v6, v1, v5

    if-eq v6, v8, :cond_3

    .line 371
    aget-char v9, v2, v5

    invoke-static {v0, v6, v9}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->different(ZCC)Z

    move-result v6

    if-eqz v6, :cond_3

    return v7

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    return v4

    :cond_5
    if-nez v3, :cond_6

    return v4

    :cond_6
    move v6, v7

    move v10, v6

    .line 384
    :goto_3
    aget-char v11, v1, v6

    if-eq v11, v9, :cond_9

    if-le v10, v5, :cond_7

    goto :goto_4

    :cond_7
    if-eq v11, v8, :cond_8

    .line 388
    aget-char v12, v2, v10

    .line 389
    invoke-static {v0, v11, v12}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->different(ZCC)Z

    move-result v11

    if-eqz v11, :cond_8

    return v7

    :cond_8
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-le v10, v5, :cond_a

    .line 398
    invoke-static {v1, v6, v3}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->allStars([CII)Z

    move-result v0

    return v0

    .line 403
    :cond_a
    :goto_5
    aget-char v11, v1, v3

    if-eq v11, v9, :cond_d

    if-le v10, v5, :cond_b

    goto :goto_6

    :cond_b
    if-eq v11, v8, :cond_c

    .line 407
    aget-char v12, v2, v5

    invoke-static {v0, v11, v12}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->different(ZCC)Z

    move-result v11

    if-eqz v11, :cond_c

    return v7

    :cond_c
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_d
    :goto_6
    if-le v10, v5, :cond_e

    .line 416
    invoke-static {v1, v6, v3}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->allStars([CII)Z

    move-result v0

    return v0

    :cond_e
    :goto_7
    if-eq v6, v3, :cond_16

    if-gt v10, v5, :cond_16

    add-int/lit8 v11, v6, 0x1

    move v12, v11

    :goto_8
    const/4 v13, -0x1

    if-gt v12, v3, :cond_10

    .line 424
    aget-char v14, v1, v12

    if-ne v14, v9, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_10
    move v12, v13

    :goto_9
    if-ne v12, v11, :cond_11

    move v6, v11

    goto :goto_7

    :cond_11
    sub-int v11, v12, v6

    sub-int/2addr v11, v4

    sub-int v14, v5, v10

    add-int/2addr v14, v4

    move v15, v7

    :goto_a
    sub-int v9, v14, v11

    if-gt v15, v9, :cond_14

    move v9, v7

    :goto_b
    if-ge v9, v11, :cond_13

    add-int v16, v6, v9

    add-int/lit8 v16, v16, 0x1

    .line 442
    aget-char v4, v1, v16

    if-eq v4, v8, :cond_12

    add-int v16, v10, v15

    add-int v16, v16, v9

    .line 443
    aget-char v8, v2, v16

    invoke-static {v0, v4, v8}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->different(ZCC)Z

    move-result v4

    if-eqz v4, :cond_12

    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x1

    const/16 v8, 0x3f

    goto :goto_a

    :cond_12
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x1

    const/16 v8, 0x3f

    goto :goto_b

    :cond_13
    add-int/2addr v10, v15

    goto :goto_c

    :cond_14
    move v10, v13

    :goto_c
    if-ne v10, v13, :cond_15

    return v7

    :cond_15
    add-int/2addr v10, v11

    move v6, v12

    const/4 v4, 0x1

    const/16 v8, 0x3f

    const/16 v9, 0x2a

    goto :goto_7

    .line 461
    :cond_16
    invoke-static {v1, v6, v3}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->allStars([CII)Z

    move-result v0

    return v0
.end method

.method public static matchPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 179
    invoke-static {p0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 180
    invoke-static {p1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPath([Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static matchPath(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 203
    invoke-static {p0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 204
    invoke-static {p1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPath([Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static matchPath([Ljava/lang/String;[Ljava/lang/String;Z)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 214
    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 216
    array-length v5, v1

    sub-int/2addr v5, v4

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    const-string v9, "**"

    if-gt v7, v3, :cond_2

    if-gt v8, v5, :cond_2

    .line 220
    aget-object v10, v0, v7

    .line 221
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    .line 224
    :cond_0
    aget-object v9, v1, v8

    invoke-static {v10, v9, v2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_1

    return v6

    :cond_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-le v8, v5, :cond_5

    :goto_2
    if-gt v7, v3, :cond_4

    .line 233
    aget-object v1, v0, v7

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v6

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    return v4

    :cond_5
    if-le v7, v3, :cond_6

    return v6

    :cond_6
    :goto_3
    if-gt v7, v3, :cond_9

    if-gt v8, v5, :cond_9

    .line 246
    aget-object v10, v0, v3

    .line 247
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_4

    .line 250
    :cond_7
    aget-object v11, v1, v5

    invoke-static {v10, v11, v2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_8

    return v6

    :cond_8
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-le v8, v5, :cond_c

    :goto_5
    if-gt v7, v3, :cond_b

    .line 259
    aget-object v1, v0, v7

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v6

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_b
    return v4

    :cond_c
    :goto_6
    if-eq v7, v3, :cond_14

    if-gt v8, v5, :cond_14

    add-int/lit8 v10, v7, 0x1

    move v11, v10

    :goto_7
    const/4 v12, -0x1

    if-gt v11, v3, :cond_e

    .line 269
    aget-object v13, v0, v11

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    goto :goto_8

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_e
    move v11, v12

    :goto_8
    if-ne v11, v10, :cond_f

    move v7, v10

    goto :goto_6

    :cond_f
    sub-int v10, v11, v7

    sub-int/2addr v10, v4

    sub-int v13, v5, v8

    add-int/2addr v13, v4

    move v14, v6

    :goto_9
    sub-int v15, v13, v10

    if-gt v14, v15, :cond_12

    move v15, v6

    :goto_a
    if-ge v15, v10, :cond_11

    add-int v16, v7, v15

    add-int/lit8 v16, v16, 0x1

    .line 287
    aget-object v4, v0, v16

    add-int v16, v8, v14

    add-int v16, v16, v15

    .line 288
    aget-object v6, v1, v16

    .line 289
    invoke-static {v4, v6, v2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_10

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto :goto_9

    :cond_10
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto :goto_a

    :cond_11
    add-int/2addr v8, v14

    goto :goto_b

    :cond_12
    move v8, v12

    :goto_b
    if-ne v8, v12, :cond_13

    const/4 v4, 0x0

    return v4

    :cond_13
    const/4 v4, 0x0

    add-int/2addr v8, v10

    move v6, v4

    move v7, v11

    const/4 v4, 0x1

    goto :goto_6

    :cond_14
    move v4, v6

    :goto_c
    if-gt v7, v3, :cond_16

    .line 305
    aget-object v1, v0, v7

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v4

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_16
    const/4 v1, 0x1

    return v1
.end method

.method public static matchPatternStart(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 80
    invoke-static {p0, p1, v0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPatternStart(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static matchPatternStart(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .line 107
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 108
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 112
    :cond_0
    invoke-static {p0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 113
    invoke-static {p1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-static {p0, p1, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPatternStart([Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static matchPatternStart([Ljava/lang/String;[Ljava/lang/String;Z)Z
    .locals 8

    .line 139
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 141
    array-length v2, p1

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-gt v4, v0, :cond_2

    if-gt v5, v2, :cond_2

    .line 145
    aget-object v6, p0, v4

    const-string v7, "**"

    .line 146
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    aget-object v7, p1, v5

    invoke-static {v6, v7, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-gt v5, v2, :cond_4

    if-gt v4, v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :cond_4
    :goto_2
    return v1
.end method

.method public static removeWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    .line 638
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 639
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 640
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rtrimWildcardTokens(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 661
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->rtrimWildcardTokens()Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static tokenizePath(Ljava/lang/String;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 489
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePath(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public static tokenizePath(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 502
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 503
    invoke-static {p0}, Lorg/apache/tools/ant/util/FileUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    sget-object v1, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v1, p0}, Lorg/apache/tools/ant/util/FileUtils;->dissect(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 505
    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 506
    aget-object p0, p0, v1

    .line 508
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 510
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .line 521
    invoke-static {p0}, Lorg/apache/tools/ant/util/FileUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 522
    sget-object v0, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/FileUtils;->dissect(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 523
    aget-object v0, p0, v1

    .line 524
    aget-object p0, p0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 526
    :goto_0
    sget-char v3, Ljava/io/File;->separatorChar:C

    .line 528
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    move v5, v1

    move v6, v5

    move v7, v6

    :goto_1
    if-ge v5, v4, :cond_3

    .line 531
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v3, :cond_2

    if-eq v5, v6, :cond_1

    add-int/lit8 v7, v7, 0x1

    :cond_1
    add-int/lit8 v6, v5, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-eq v4, v6, :cond_4

    add-int/lit8 v7, v7, 0x1

    :cond_4
    if-nez v0, :cond_5

    move v5, v1

    goto :goto_2

    :cond_5
    move v5, v2

    :goto_2
    add-int/2addr v7, v5

    .line 541
    new-array v5, v7, [Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 544
    aput-object v0, v5, v1

    goto :goto_3

    :cond_6
    move v2, v1

    :goto_3
    move v0, v1

    :goto_4
    if-ge v1, v4, :cond_9

    .line 551
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_8

    if-eq v1, v0, :cond_7

    .line 553
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v6, v2, 0x1

    .line 554
    aput-object v0, v5, v2

    move v2, v6

    :cond_7
    add-int/lit8 v0, v1, 0x1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    if-eq v4, v0, :cond_a

    .line 560
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 561
    aput-object p0, v5, v2

    :cond_a
    return-object v5
.end method

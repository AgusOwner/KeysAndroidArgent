.class public Lorg/apache/commons/lang3/CharSequenceUtils;
.super Ljava/lang/Object;
.source "CharSequenceUtils.java"


# static fields
.field private static final NOT_FOUND:I = -0x1

.field static final TO_STRING_LIMIT:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkLaterThan1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z
    .locals 4

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    move v1, v0

    :goto_0
    if-gt v1, p2, :cond_2

    add-int v2, p3, v1

    .line 34
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1

    add-int v2, p3, p2

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method static indexOf(Ljava/lang/CharSequence;II)I
    .locals 8

    .line 113
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 114
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0

    .line 116
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gez p2, :cond_1

    move p2, v1

    :cond_1
    const/high16 v2, 0x10000

    const/4 v3, -0x1

    if-ge p1, v2, :cond_4

    :goto_0
    if-ge p2, v0, :cond_3

    .line 122
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    const v2, 0x10ffff

    if-gt p1, v2, :cond_6

    .line 130
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    :goto_1
    const/4 v2, 0x1

    add-int/lit8 v4, v0, -0x1

    if-ge p2, v4, :cond_6

    .line 132
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v5, p2, 0x1

    .line 133
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 134
    aget-char v7, p1, v1

    if-ne v4, v7, :cond_5

    aget-char v2, p1, v2

    if-ne v6, v2, :cond_5

    return p2

    :cond_5
    move p2, v5

    goto :goto_1

    :cond_6
    return v3
.end method

.method static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1

    .line 50
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 53
    :cond_0
    instance-of v0, p0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 54
    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 56
    :cond_1
    instance-of v0, p0, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    .line 57
    check-cast p0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 59
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;II)I
    .locals 5

    .line 246
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 247
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    return p0

    .line 249
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, -0x1

    if-gez p2, :cond_1

    return v1

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, v0, -0x1

    :cond_2
    const/high16 v2, 0x10000

    if-ge p1, v2, :cond_5

    :goto_0
    if-ltz p2, :cond_4

    .line 258
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    const v2, 0x10ffff

    if-gt p1, v2, :cond_8

    .line 267
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne p2, v0, :cond_6

    return v1

    :cond_6
    :goto_1
    if-ltz p2, :cond_8

    .line 273
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v3, p2, 0x1

    .line 274
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    .line 275
    aget-char v4, p1, v4

    if-ne v4, v0, :cond_7

    aget-char v0, p1, v2

    if-ne v0, v3, :cond_7

    return p2

    :cond_7
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_8
    return v1
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_e

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 154
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 155
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 156
    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 158
    :cond_1
    instance-of v1, p0, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    .line 159
    check-cast p0, Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 161
    :cond_2
    instance-of v1, p0, Ljava/lang/StringBuffer;

    if-eqz v1, :cond_3

    .line 162
    check-cast p0, Ljava/lang/StringBuffer;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 166
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 167
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le p2, v1, :cond_4

    move p2, v1

    :cond_4
    if-ltz p2, :cond_e

    if-le v2, v1, :cond_5

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    return p2

    :cond_6
    const/16 v3, 0x10

    if-gt v2, v3, :cond_9

    .line 182
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 183
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 185
    :cond_7
    instance-of v3, p0, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_8

    .line 186
    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 188
    :cond_8
    instance-of v3, p0, Ljava/lang/StringBuffer;

    if-eqz v3, :cond_9

    .line 189
    check-cast p0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_9
    add-int v3, p2, v2

    if-le v3, v1, :cond_a

    sub-int p2, v1, v2

    :cond_a
    const/4 v1, 0x0

    .line 197
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 201
    :cond_b
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v1, :cond_c

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_b

    return v0

    .line 207
    :cond_c
    invoke-static {p0, p1, v2, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->checkLaterThan1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_d

    return p2

    :cond_d
    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_b

    :cond_e
    :goto_0
    return v0
.end method

.method static regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z
    .locals 7

    .line 296
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 297
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    move v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0

    .line 304
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    .line 305
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    const/4 v2, 0x0

    if-ltz p2, :cond_7

    if-ltz p4, :cond_7

    if-gez p5, :cond_1

    goto :goto_2

    :cond_1
    if-lt v0, p5, :cond_7

    if-ge v1, p5, :cond_2

    goto :goto_2

    :cond_2
    :goto_0
    add-int/lit8 v0, p5, -0x1

    if-lez p5, :cond_6

    add-int/lit8 p5, p2, 0x1

    .line 318
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    add-int/lit8 v1, p4, 0x1

    .line 319
    invoke-interface {p3, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    if-ne p2, p4, :cond_3

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    return v2

    .line 330
    :cond_4
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p2

    .line 331
    invoke-static {p4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p4

    if-eq p2, p4, :cond_5

    .line 332
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    invoke-static {p4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p4

    if-eq p2, p4, :cond_5

    return v2

    :cond_5
    :goto_1
    move p2, p5

    move p5, v0

    move p4, v1

    goto :goto_0

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_2
    return v2
.end method

.method public static subSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 355
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static toCharArray(Ljava/lang/CharSequence;)[C
    .locals 4

    .line 366
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    .line 368
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object p0

    .line 370
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 371
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    .line 373
    :cond_1
    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 375
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

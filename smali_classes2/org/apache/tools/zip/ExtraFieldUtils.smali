.class public Lorg/apache/tools/zip/ExtraFieldUtils;
.super Ljava/lang/Object;
.source "ExtraFieldUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;
    }
.end annotation


# static fields
.field private static final WORD:I = 0x4

.field private static final implementations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/tools/zip/ZipShort;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/tools/zip/ExtraFieldUtils;->implementations:Ljava/util/Map;

    .line 46
    const-class v0, Lorg/apache/tools/zip/AsiExtraField;

    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 47
    const-class v0, Lorg/apache/tools/zip/JarMarker;

    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 48
    const-class v0, Lorg/apache/tools/zip/UnicodePathExtraField;

    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 49
    const-class v0, Lorg/apache/tools/zip/UnicodeCommentExtraField;

    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 50
    const-class v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;

    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 91
    sget-object v0, Lorg/apache/tools/zip/ExtraFieldUtils;->implementations:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :try_start_0
    new-array v1, p0, [Ljava/lang/Class;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/zip/ZipExtraField;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 100
    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/InstantiationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/InstantiationException;

    throw p0

    :catch_1
    move-exception p0

    .line 97
    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0}, Ljava/lang/InstantiationException;-><init>()V

    .line 98
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/InstantiationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/InstantiationException;

    throw p0

    .line 104
    :cond_0
    new-instance v0, Lorg/apache/tools/zip/UnrecognizedExtraField;

    invoke-direct {v0}, Lorg/apache/tools/zip/UnrecognizedExtraField;-><init>()V

    .line 105
    invoke-virtual {v0, p0}, Lorg/apache/tools/zip/UnrecognizedExtraField;->setHeaderId(Lorg/apache/tools/zip/ZipShort;)V

    return-object v0
.end method

.method public static mergeCentralDirectoryData([Lorg/apache/tools/zip/ZipExtraField;)[B
    .locals 10

    .line 243
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    array-length v0, p0

    sub-int/2addr v0, v1

    aget-object v0, p0, v0

    instance-of v0, v0, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 245
    :goto_0
    array-length v3, p0

    if-eqz v0, :cond_1

    sub-int/2addr v3, v1

    :cond_1
    mul-int/lit8 v4, v3, 0x4

    .line 248
    array-length v5, p0

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, p0, v6

    .line 249
    invoke-interface {v7}, Lorg/apache/tools/zip/ZipExtraField;->getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/tools/zip/ZipShort;->getValue()I

    move-result v7

    add-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 251
    :cond_2
    new-array v4, v4, [B

    move v5, v2

    move v6, v5

    :goto_2
    if-ge v5, v3, :cond_3

    .line 254
    aget-object v7, p0, v5

    invoke-interface {v7}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/tools/zip/ZipShort;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v2, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    aget-object v7, p0, v5

    invoke-interface {v7}, Lorg/apache/tools/zip/ZipExtraField;->getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/tools/zip/ZipShort;->getBytes()[B

    move-result-object v7

    add-int/lit8 v9, v6, 0x2

    invoke-static {v7, v2, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    aget-object v7, p0, v5

    invoke-interface {v7}, Lorg/apache/tools/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v7

    add-int/lit8 v8, v6, 0x4

    .line 259
    array-length v9, v7

    invoke-static {v7, v2, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    array-length v7, v7

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 263
    array-length v0, p0

    sub-int/2addr v0, v1

    aget-object p0, p0, v0

    invoke-interface {p0}, Lorg/apache/tools/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object p0

    .line 264
    array-length v0, p0

    invoke-static {p0, v2, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    return-object v4
.end method

.method public static mergeLocalFileDataData([Lorg/apache/tools/zip/ZipExtraField;)[B
    .locals 10

    .line 209
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    array-length v0, p0

    sub-int/2addr v0, v1

    aget-object v0, p0, v0

    instance-of v0, v0, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 211
    :goto_0
    array-length v3, p0

    if-eqz v0, :cond_1

    sub-int/2addr v3, v1

    :cond_1
    mul-int/lit8 v4, v3, 0x4

    .line 214
    array-length v5, p0

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, p0, v6

    .line 215
    invoke-interface {v7}, Lorg/apache/tools/zip/ZipExtraField;->getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/tools/zip/ZipShort;->getValue()I

    move-result v7

    add-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 218
    :cond_2
    new-array v4, v4, [B

    move v5, v2

    move v6, v5

    :goto_2
    if-ge v5, v3, :cond_3

    .line 221
    aget-object v7, p0, v5

    invoke-interface {v7}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/tools/zip/ZipShort;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v2, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    aget-object v7, p0, v5

    invoke-interface {v7}, Lorg/apache/tools/zip/ZipExtraField;->getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/tools/zip/ZipShort;->getBytes()[B

    move-result-object v7

    add-int/lit8 v9, v6, 0x2

    invoke-static {v7, v2, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    aget-object v7, p0, v5

    invoke-interface {v7}, Lorg/apache/tools/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v7

    add-int/lit8 v8, v6, 0x4

    .line 226
    array-length v9, v7

    invoke-static {v7, v2, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    array-length v7, v7

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 230
    array-length v0, p0

    sub-int/2addr v0, v1

    aget-object p0, p0, v0

    invoke-interface {p0}, Lorg/apache/tools/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object p0

    .line 231
    array-length v0, p0

    invoke-static {p0, v2, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    return-object v4
.end method

.method public static parse([B)[Lorg/apache/tools/zip/ZipExtraField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 118
    sget-object v1, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;->THROW:Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;

    invoke-static {p0, v0, v1}, Lorg/apache/tools/zip/ExtraFieldUtils;->parse([BZLorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object p0

    return-object p0
.end method

.method public static parse([BZ)[Lorg/apache/tools/zip/ZipExtraField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 133
    sget-object v0, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;->THROW:Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;

    invoke-static {p0, p1, v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->parse([BZLorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object p0

    return-object p0
.end method

.method public static parse([BZLorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/tools/zip/ZipExtraField;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 154
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x4

    if-gt v1, v2, :cond_6

    .line 155
    new-instance v2, Lorg/apache/tools/zip/ZipShort;

    invoke-direct {v2, p0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>([BI)V

    .line 156
    new-instance v3, Lorg/apache/tools/zip/ZipShort;

    add-int/lit8 v4, v1, 0x2

    invoke-direct {v3, p0, v4}, Lorg/apache/tools/zip/ZipShort;-><init>([BI)V

    invoke-virtual {v3}, Lorg/apache/tools/zip/ZipShort;->getValue()I

    move-result v3

    add-int/lit8 v4, v1, 0x4

    add-int v5, v4, v3

    .line 157
    array-length v6, p0

    if-le v5, v6, :cond_3

    .line 158
    invoke-virtual {p2}, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;->getKey()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 165
    new-instance p2, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    invoke-direct {p2}, Lorg/apache/tools/zip/UnparseableExtraFieldData;-><init>()V

    if-eqz p1, :cond_0

    .line 167
    array-length p1, p0

    sub-int/2addr p1, v1

    invoke-virtual {p2, p0, v1, p1}, Lorg/apache/tools/zip/UnparseableExtraFieldData;->parseFromLocalFileData([BII)V

    goto :goto_1

    .line 169
    :cond_0
    array-length p1, p0

    sub-int/2addr p1, v1

    invoke-virtual {p2, p0, v1, p1}, Lorg/apache/tools/zip/UnparseableExtraFieldData;->parseFromCentralDirectoryData([BII)V

    .line 171
    :goto_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 179
    :cond_1
    new-instance p0, Ljava/util/zip/ZipException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unknown UnparseableExtraField key: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;->getKey()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_2
    new-instance p1, Ljava/util/zip/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "bad extra field starting at "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ".  Block length of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " bytes exceeds remaining data of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p0, p0

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x4

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " bytes."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :cond_3
    :try_start_0
    invoke-static {v2}, Lorg/apache/tools/zip/ExtraFieldUtils;->createExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v2

    if-nez p1, :cond_5

    .line 185
    instance-of v5, v2, Lorg/apache/tools/zip/CentralDirectoryParsingZipExtraField;

    if-nez v5, :cond_4

    goto :goto_2

    .line 188
    :cond_4
    move-object v5, v2

    check-cast v5, Lorg/apache/tools/zip/CentralDirectoryParsingZipExtraField;

    .line 189
    invoke-interface {v5, p0, v4, v3}, Lorg/apache/tools/zip/CentralDirectoryParsingZipExtraField;->parseFromCentralDirectoryData([BII)V

    goto :goto_3

    .line 186
    :cond_5
    :goto_2
    invoke-interface {v2, p0, v4, v3}, Lorg/apache/tools/zip/ZipExtraField;->parseFromLocalFileData([BII)V

    .line 191
    :goto_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    goto/16 :goto_0

    :catch_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    .line 193
    :goto_4
    new-instance p1, Ljava/util/zip/ZipException;

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :cond_6
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lorg/apache/tools/zip/ZipExtraField;

    .line 199
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/tools/zip/ZipExtraField;

    return-object p0
.end method

.method public static register(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/ZipExtraField;

    .line 65
    sget-object v1, Lorg/apache/tools/zip/ExtraFieldUtils;->implementations:Ljava/util/Map;

    invoke-interface {v0}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v0

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\'s no-arg constructor threw an exception:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 76
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'s no-arg constructor not found"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :catch_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'s no-arg constructor is not public"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :catch_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is not a concrete class"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :catch_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " doesn\'t implement ZipExtraField"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

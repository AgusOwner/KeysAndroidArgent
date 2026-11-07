.class public Lorg/apache/tools/ant/types/selectors/TokenizedPath;
.super Ljava/lang/Object;
.source "TokenizedPath.java"


# static fields
.field private static final CS_SCAN_ONLY:[Z

.field private static final CS_THEN_NON_CS:[Z

.field public static final EMPTY_PATH:Lorg/apache/tools/ant/types/selectors/TokenizedPath;

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private final path:Ljava/lang/String;

.field private final tokenizedPath:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v0, v3, v2}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->EMPTY_PATH:Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    .line 42
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    const/4 v0, 0x1

    new-array v2, v0, [Z

    aput-boolean v0, v2, v1

    .line 44
    sput-object v2, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->CS_SCAN_ONLY:[Z

    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 46
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->CS_THEN_NON_CS:[Z

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-static {p1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Ljava/lang/String;)V
    .locals 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget-object v0, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-eq v0, v1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    .line 73
    :goto_0
    iget-object v0, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    .line 74
    iget-object v1, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget-object p1, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    array-length p1, p1

    aput-object p2, v0, p1

    return-void
.end method

.method private static findFile(Ljava/io/File;[Ljava/lang/String;Z)Ljava/io/File;
    .locals 12

    .line 183
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_8

    aget-object v4, p1, v2

    .line 184
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    return-object v3

    .line 187
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    if-eqz p2, :cond_1

    .line 193
    sget-object v6, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->CS_SCAN_ONLY:[Z

    goto :goto_1

    :cond_1
    sget-object v6, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->CS_THEN_NON_CS:[Z

    :goto_1
    move v7, v1

    move v8, v7

    :goto_2
    if-nez v7, :cond_5

    .line 194
    array-length v9, v6

    if-ge v8, v9, :cond_5

    move v9, v1

    :goto_3
    if-nez v7, :cond_4

    .line 195
    array-length v10, v5

    if-ge v9, v10, :cond_4

    .line 196
    aget-boolean v10, v6, v8

    if-eqz v10, :cond_2

    aget-object v10, v5, v9

    .line 197
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_4

    :cond_2
    aget-object v10, v5, v9

    .line 198
    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 199
    :goto_4
    new-instance v7, Ljava/io/File;

    aget-object v10, v5, v9

    invoke-direct {v7, p0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x1

    move-object v11, v7

    move v7, p0

    move-object p0, v11

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    if-nez v7, :cond_6

    return-object v3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_7
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 190
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "IO error scanning directory %s"

    invoke-direct {p1, p2, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 208
    :cond_8
    array-length p1, p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_9

    move-object p0, v3

    :cond_9
    return-object p0
.end method


# virtual methods
.method public depth()I
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 163
    instance-of v0, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    check-cast p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    iget-object p1, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public findFile(Ljava/io/File;Z)Ljava/io/File;
    .locals 3

    .line 115
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->isAbsolutePath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    .line 118
    sget-object p1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/util/FileUtils;->dissect(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 119
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 120
    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_0

    .line 122
    :cond_0
    sget-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 123
    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/util/FileUtils;->removeLeadingPath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_1
    invoke-static {v0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_2
    :goto_0
    invoke-static {p1, v0, p2}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->findFile(Ljava/io/File;[Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method getTokens()[Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSymlink(Ljava/io/File;)Z
    .locals 7

    .line 142
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    if-nez p1, :cond_0

    new-array v5, v2, [Ljava/lang/String;

    .line 145
    invoke-static {v4, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    goto :goto_1

    .line 147
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    .line 149
    :goto_1
    invoke-static {v5}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 p1, 0x1

    return p1

    .line 152
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    move-object p1, v5

    goto :goto_0

    :cond_2
    return v2
.end method

.method public toPattern()Lorg/apache/tools/ant/types/selectors/TokenizedPattern;
    .locals 3

    .line 218
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->tokenizedPath:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->path:Ljava/lang/String;

    return-object v0
.end method

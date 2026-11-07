.class public Lorg/apache/tools/ant/types/selectors/TokenizedPattern;
.super Ljava/lang/Object;
.source "TokenizedPattern.java"


# static fields
.field public static final EMPTY_PATTERN:Lorg/apache/tools/ant/types/selectors/TokenizedPattern;


# instance fields
.field private final pattern:Ljava/lang/String;

.field private final tokenizedPattern:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->EMPTY_PATTERN:Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 50
    invoke-static {p1}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->tokenizePathAsArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->pattern:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public containsPattern(Ljava/lang/String;)Z
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/function/Predicate;->isEqual(Ljava/lang/Object;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public depth()I
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 3

    .line 177
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 113
    instance-of v0, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->pattern:Ljava/lang/String;

    check-cast p1, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    iget-object p1, p1, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->pattern:Ljava/lang/String;

    .line 114
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

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public matchPath(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->getTokens()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPath([Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public matchStartOf(Lorg/apache/tools/ant/types/selectors/TokenizedPath;Z)Z
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->getTokens()[Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->matchPatternStart([Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public rtrimWildcardTokens()Lorg/apache/tools/ant/types/selectors/TokenizedPath;
    .locals 5

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 152
    :goto_0
    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 153
    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->hasWildcards(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    if-lez v2, :cond_1

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-eq v3, v4, :cond_1

    .line 158
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_1
    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 163
    sget-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPath;->EMPTY_PATH:Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    return-object v0

    .line 165
    :cond_3
    new-array v3, v2, [Ljava/lang/String;

    .line 166
    iget-object v4, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    new-instance v1, Lorg/apache/tools/ant/types/selectors/TokenizedPath;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lorg/apache/tools/ant/types/selectors/TokenizedPath;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public withoutLastToken()Lorg/apache/tools/ant/types/selectors/TokenizedPattern;
    .locals 5

    .line 187
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    array-length v1, v0

    if-eqz v1, :cond_1

    .line 190
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 191
    sget-object v0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->EMPTY_PATTERN:Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    return-object v0

    .line 193
    :cond_0
    array-length v1, v0

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 194
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 195
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->tokenizedPattern:[Ljava/lang/String;

    array-length v3, v1

    sub-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    .line 196
    array-length v4, v1

    sub-int/2addr v4, v2

    const/4 v2, 0x0

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    new-instance v1, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;

    iget-object v4, p0, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;->pattern:Ljava/lang/String;

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lorg/apache/tools/ant/types/selectors/TokenizedPattern;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1

    .line 188
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t strip a token from nothing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

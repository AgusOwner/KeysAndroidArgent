.class public Lorg/apache/tools/ant/types/selectors/DepthSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;
.source "DepthSelector.java"


# static fields
.field public static final MAX_KEY:Ljava/lang/String; = "max"

.field public static final MIN_KEY:Ljava/lang/String; = "min"


# instance fields
.field public max:I

.field public min:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->min:I

    .line 45
    iput v0, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->max:I

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 6

    .line 134
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/DepthSelector;->validate()V

    .line 138
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    .line 140
    new-instance v0, Ljava/util/StringTokenizer;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v1, Ljava/util/StringTokenizer;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-direct {v1, p3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, -0x1

    move v2, p3

    .line 142
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 143
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 145
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    new-instance p3, Lorg/apache/tools/ant/BuildException;

    const-string v0, "File %s does not appear within %s directory"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 154
    iget v3, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->max:I

    if-le v3, p3, :cond_0

    if-le v2, v3, :cond_0

    return v4

    .line 159
    :cond_3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_6

    .line 163
    iget p1, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->min:I

    if-le p1, p3, :cond_4

    if-lt v2, p1, :cond_5

    :cond_4
    const/4 v4, 0x1

    :cond_5
    return v4

    .line 160
    :cond_6
    new-instance p3, Lorg/apache/tools/ant/BuildException;

    const-string v0, "File %s is outside of %s directory tree"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3
.end method

.method public setMax(I)V
    .locals 0

    .line 71
    iput p1, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->max:I

    return-void
.end method

.method public setMin(I)V
    .locals 0

    .line 62
    iput p1, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->min:I

    return-void
.end method

.method public varargs setParameters([Lorg/apache/tools/ant/types/Parameter;)V
    .locals 5

    .line 81
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/selectors/BaseExtendSelector;->setParameters([Lorg/apache/tools/ant/types/Parameter;)V

    if-eqz p1, :cond_2

    .line 83
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 84
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "min"

    .line 85
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/types/selectors/DepthSelector;->setMin(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 89
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid minimum value "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/DepthSelector;->setError(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v4, "max"

    .line 92
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/types/selectors/DepthSelector;->setMax(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 96
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid maximum value "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/DepthSelector;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid parameter "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/selectors/DepthSelector;->setError(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{depthselector min: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifySettings()V
    .locals 2

    .line 111
    iget v0, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->min:I

    if-gez v0, :cond_0

    iget v0, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->max:I

    if-gez v0, :cond_0

    const-string v0, "You must set at least one of the min or the max levels."

    .line 112
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/DepthSelector;->setError(Ljava/lang/String;)V

    .line 114
    :cond_0
    iget v0, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->max:I

    iget v1, p0, Lorg/apache/tools/ant/types/selectors/DepthSelector;->min:I

    if-ge v0, v1, :cond_1

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    const-string v0, "The maximum depth is lower than the minimum."

    .line 115
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/DepthSelector;->setError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

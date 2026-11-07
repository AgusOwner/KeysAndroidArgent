.class public Lorg/apache/tools/ant/types/selectors/DependSelector;
.super Lorg/apache/tools/ant/types/selectors/MappingSelector;
.source "DependSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/MappingSelector;-><init>()V

    return-void
.end method


# virtual methods
.method public selectionTest(Ljava/io/File;Ljava/io/File;)Z
    .locals 1

    .line 62
    iget v0, p0, Lorg/apache/tools/ant/types/selectors/DependSelector;->granularity:I

    invoke-static {p1, p2, v0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->isOutOfDate(Ljava/io/File;Ljava/io/File;I)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{dependselector targetdir: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DependSelector;->targetdir:Ljava/io/File;

    if-nez v1, :cond_0

    const-string v1, "NOT YET SET"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DependSelector;->targetdir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, " granularity: "

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/tools/ant/types/selectors/DependSelector;->granularity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DependSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    const-string v2, " mapper: "

    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DependSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 47
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DependSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v1, :cond_2

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DependSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Mapper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    const-string v1, "}"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

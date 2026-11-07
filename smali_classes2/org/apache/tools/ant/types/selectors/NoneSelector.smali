.class public Lorg/apache/tools/ant/types/selectors/NoneSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;
.source "NoneSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;-><init>()V

    return-void
.end method

.method static synthetic lambda$isSelected$0(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Lorg/apache/tools/ant/types/selectors/FileSelector;)Z
    .locals 0

    .line 59
    invoke-interface {p3, p0, p1, p2}, Lorg/apache/tools/ant/types/selectors/FileSelector;->isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    .line 57
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/NoneSelector;->validate()V

    .line 58
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/NoneSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/NoneSelector;->getSelectors(Lorg/apache/tools/ant/Project;)[Lorg/apache/tools/ant/types/selectors/FileSelector;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/selectors/NoneSelector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/tools/ant/types/selectors/NoneSelector$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    .line 59
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/NoneSelector;->hasSelectors()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "{noneselect: "

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-super {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelectorContainer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

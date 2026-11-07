.class public Lorg/apache/tools/ant/types/selectors/NotSelector;
.super Lorg/apache/tools/ant/types/selectors/NoneSelector;
.source "NotSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/NoneSelector;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/NotSelector;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/selectors/NotSelector;->appendSelector(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/NotSelector;->hasSelectors()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "{notselect: "

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-super {p0}, Lorg/apache/tools/ant/types/selectors/NoneSelector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifySettings()V
    .locals 2

    .line 66
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/NotSelector;->selectorCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "One and only one selector is allowed within the <not> tag"

    .line 67
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/NotSelector;->setError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.class public interface abstract Lorg/apache/tools/ant/types/selectors/FileSelector;
.super Ljava/lang/Object;
.source "FileSelector.java"

# interfaces
.implements Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;


# direct methods
.method public static synthetic lambda$isSelected$0(Lorg/apache/tools/ant/types/selectors/FileSelector;Ljava/io/File;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "_this"    # Lorg/apache/tools/ant/types/selectors/FileSelector;

    .line 0
    const/4 v0, 0x0

    .line 58
    invoke-interface {p0, v0, v0, p1}, Lorg/apache/tools/ant/types/selectors/FileSelector;->isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public abstract isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation
.end method

.method public isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 1

    .line 57
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->asOptional(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/ImportTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/types/selectors/FileSelector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/selectors/FileSelector$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/selectors/FileSelector;)V

    .line 58
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

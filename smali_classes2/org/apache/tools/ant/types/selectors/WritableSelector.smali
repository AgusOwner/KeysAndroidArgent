.class public Lorg/apache/tools/ant/types/selectors/WritableSelector;
.super Ljava/lang/Object;
.source "WritableSelector.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/FileSelector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 36
    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

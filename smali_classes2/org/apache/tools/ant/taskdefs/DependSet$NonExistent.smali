.class final Lorg/apache/tools/ant/taskdefs/DependSet$NonExistent;
.super Lorg/apache/tools/ant/types/resources/Restrict;
.source "DependSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/DependSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonExistent"
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/Restrict;-><init>()V

    .line 94
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 95
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/DependSet;->access$000()Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/resources/Restrict;->add(Lorg/apache/tools/ant/types/resources/selectors/ResourceSelector;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/types/ResourceCollection;Lorg/apache/tools/ant/taskdefs/DependSet$1;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/DependSet$NonExistent;-><init>(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

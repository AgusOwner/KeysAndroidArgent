.class public final synthetic Lorg/apache/tools/ant/taskdefs/Recorder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/taskdefs/Recorder;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Recorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Recorder$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/Recorder;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Recorder$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/Recorder;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Recorder;->lambda$cleanup$0$org-apache-tools-ant-taskdefs-Recorder(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

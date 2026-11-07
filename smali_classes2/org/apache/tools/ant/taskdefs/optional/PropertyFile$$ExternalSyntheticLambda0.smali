.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;

    check-cast p1, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->lambda$executeOperation$0$org-apache-tools-ant-taskdefs-optional-PropertyFile(Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;)V

    return-void
.end method

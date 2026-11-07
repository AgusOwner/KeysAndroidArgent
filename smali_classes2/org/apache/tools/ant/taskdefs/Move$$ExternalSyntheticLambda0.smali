.class public final synthetic Lorg/apache/tools/ant/taskdefs/Move$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/types/FilterSetCollection;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/FilterSetCollection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Move$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/FilterSetCollection;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Move$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/FilterSetCollection;

    check-cast p1, Lorg/apache/tools/ant/types/FilterSet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/FilterSetCollection;->addFilterSet(Lorg/apache/tools/ant/types/FilterSet;)V

    return-void
.end method

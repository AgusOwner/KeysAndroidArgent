.class Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;
.super Ljava/lang/Object;
.source "RuntimeConfigurable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/RuntimeConfigurable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributeComponentInformation"
.end annotation


# instance fields
.field componentName:Ljava/lang/String;

.field restricted:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;->componentName:Ljava/lang/String;

    .line 135
    iput-boolean p2, p0, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;->restricted:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLorg/apache/tools/ant/RuntimeConfigurable$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getComponentName()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public isRestricted()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;->restricted:Z

    return v0
.end method

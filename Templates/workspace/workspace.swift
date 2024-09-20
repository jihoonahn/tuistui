import ProjectDescription

private let pathAttribute = Template.Attribute.optional("path", default: "Projects")
private let nameAttribute = Template.Attribute.required("name")

private let template = Template(
    description: "Workspace module template",
    attributes: [
        pathAttribute,
        nameAttribute
    ],
    items: [
        .file(
            path: "\(pathAttribute)/\(nameAttribute)/Workspace.swift",
            templatePath: "Workspace.stencil"
        ),
        .file(
            path: "Tuist/ProjectDescriptionHelpers/Workspace/\(nameAttribute).swift",
            templatePath: "WorkspaceDescription.stencil"
        )
    ]
)

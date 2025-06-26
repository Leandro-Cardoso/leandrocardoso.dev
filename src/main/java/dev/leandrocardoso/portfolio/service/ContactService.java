package dev.leandrocardoso.portfolio.service;

import dev.leandrocardoso.portfolio.model.Contact;
import dev.leandrocardoso.portfolio.repository.ContactRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContactService {

    private final ContactRepository contactRepository;

    @Autowired
    public ContactService(ContactRepository contactRepository) {
        this.contactRepository = contactRepository;
    }

    public List<Contact> getAllContacts() {
        return this.contactRepository.findAll();
    }

}
